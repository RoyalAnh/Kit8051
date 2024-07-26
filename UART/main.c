#include <mcs51/8052.h>
#include <stdio.h>

#define led P1

int i, j, k;
int hieu_ung_hien_tai = 1;  // 3 hiệu ứng tương ứng với 1, 2 và 3
int delayms = 100;          // Thời gian trễ giữa các lần sáng led

void delay_ms(long ms) {
    ms *= 1000;
    while (ms > 0) {
        TMOD = TMOD & 0xF0; // xóa các bit cấu hình cho TImer 0 ko ảnh hưởng đến Timer 1
        TMOD = TMOD | 0x01; // thiết lập bit thấp nhât, cấu hình TImer 0 chế độ 1
        ET0 = 0;
        if (ms >= 65536) {
            TH0 = 0;
            TL0 = 0;
            ms -= 65536;
        } else {
            ms = 65536 - ms;
            TH0 = ms / 256;
            TL0 = ms % 256;
            ms = 0;
        }
        TF0 = 0;
        TR0 = 1;
        while (TF0 == 0);
        TR0 = 0;
    }
}

void uart_init() {
    TMOD |= 0x20;  // Timer 1 ở chế độ 2
    TH1 = 0xFD;    // Baud rate 9600 cho 11.0592 MHz
    SCON = 0x50;   // Chế độ UART 8-bit, cho phép nhận dữ liệu (thanh ghi đk nt)
    TR1 = 1;
}

void uart_send_char(char c) {
    SBUF = c;
    while (TI == 0);
    TI = 0;
}

void uart_send_string(char* str) {
    while (*str) {
        uart_send_char(*str++);
    }
}

void send_led_state() {
    char buffer[20]; // đại diện cho các LED 1-8
    unsigned char led_state = ~led;
    int index = 0;

    for (int i = 0; i < 8; i++) {
        if (led_state & (1 << i)) {
            buffer[index++] = 'L';
            buffer[index++] = '1' + i;
        }
    }
    buffer[index++] = '\r';
    buffer[index++] = '\n';
    buffer[index] = '\0';

    uart_send_string(buffer);
}

// Hiệu ứng 1: Hiệu ứng này làm sáng và tắt 2 LED đầu tiên từ trái sang phải và từ phải sang trái.
void hieu_ung_1() {
    led = 0xFF;  // Tắt tất cả led
    delay_ms(delayms);

    unsigned char hieu_ung_1 = 0x03;
    for (j = 0; j < 7; j++) {
        if (hieu_ung_hien_tai != 1) return;
        led = ~hieu_ung_1;
        send_led_state();
        delay_ms(delayms);
        hieu_ung_1 = hieu_ung_1 << 1;
    }

    hieu_ung_1 = 0xC0;
    for (j = 0; j < 7; j++) {
        if (hieu_ung_hien_tai != 1) return;
        led = ~hieu_ung_1;
        send_led_state();
        delay_ms(delayms);
        hieu_ung_1 = hieu_ung_1 >> 1;
    }
}

// Hiệu ứng 2: Hiệu ứng này làm sáng dần từ trái sang phải và tắt dần từ phải sang trái.
void hieu_ung_2() {
    led = 0xFF;  // Tắt tất cả led
    delay_ms(delayms);

    unsigned char giu_hieu_ung = 0x00;
    int countled = 8;

    for (j = 0; j < 8; j++) {
        unsigned char hieu_ung_2 = 0x01;
        for (k = 0; k < countled; k++) {
            if (hieu_ung_hien_tai != 2) return;
            led = ~(hieu_ung_2 | giu_hieu_ung);
            send_led_state();
            delay_ms(delayms);
            if (k != countled - 1) hieu_ung_2 = hieu_ung_2 << 1;
        }
        giu_hieu_ung = hieu_ung_2 | giu_hieu_ung;
        countled--;
    }

    for (j = 0; j < 8; j++) {
        if (hieu_ung_hien_tai != 2) return;
        led = ~giu_hieu_ung;
        send_led_state();
        delay_ms(delayms);
        giu_hieu_ung = giu_hieu_ung >> 1;
    }
}

// Hiệu ứng 3: Hiệu ứng này làm sáng LED từ hai đầu vào giữa và ngược lại.
void hieu_ung_3() {
    led = 0xFF;  // Tắt tất cả các led
    delay_ms(delayms);

    unsigned char hieu_ung_3_1 = 0x01;
    unsigned char hieu_ung_3_2 = 0x80;
    for (j = 0; j < 8; j++) {
        if (hieu_ung_hien_tai != 3) return;
        led = ~(hieu_ung_3_1 | hieu_ung_3_2);
        send_led_state();
        if (hieu_ung_3_1 != 0x08) delay_ms(delayms);
        hieu_ung_3_1 = hieu_ung_3_1 << 1;
        hieu_ung_3_2 = hieu_ung_3_2 >> 1;
    }
}

void initExtInterrupt() {
    P3_2 = 1;//INT0
    P3_3 = 1;//INT1
    IT0 = 1; // cấu hình ngắt ngoài INT0
    IT1 = 1;
    IE = 0x85;
}

// Xử lý ngắt ngoài
void ISR0() __interrupt(0) {// chuyẻn hiệu ứng về trước
    EA = 0; // tắt ngắt toàn cục
    if (hieu_ung_hien_tai == 1)
        hieu_ung_hien_tai = 3;
    else
        hieu_ung_hien_tai--;
    EA = 1;
}

void ISR1() __interrupt(2) {// chuyển hiệu ứng về sau
    EA = 0;
    if (hieu_ung_hien_tai == 3)
        hieu_ung_hien_tai = 1;
    else
        hieu_ung_hien_tai++;
    EA = 1;
}

void main() {
    uart_init();  // Khởi tạo UART
    initExtInterrupt();  // Khởi tạo ngắt ngoài 0 và 1
    while (1) {
        if (hieu_ung_hien_tai == 1) {
            hieu_ung_1();
        } else if (hieu_ung_hien_tai == 2) {
            hieu_ung_2();
        } else if (hieu_ung_hien_tai == 3) {
            hieu_ung_3();
        }
    }
}
