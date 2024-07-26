#include <mcs51/8052.h>
#include <stdio.h>

#define Q4 P2_0
#define Q3 P2_1
#define Q2 P2_2
#define Q1 P2_3

typedef unsigned int u16;
typedef unsigned char u8;
u8 __code LED_Mask[10] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90};

void delay(u16 i)
{
    while (i--);
}

void Display(u8 number)
{
    u8 digit1 = number / 100;     // Chữ số hàng trăm
    u8 digit2 = (number / 10) % 10; // Chữ số hàng chục
    u8 digit3 = number % 10;      // Chữ số hàng đơn vị

    // Hiển thị chữ số hàng trăm
    Q4 = 1;
    Q3 = 0;
    Q2 = 1;
    Q1 = 1;
    P1 = LED_Mask[digit1];
    delay(100000);
    P1 = 0xFF;

    // Hiển thị chữ số hàng chục
    Q4 = 1;
    Q3 = 1;
    Q2 = 0;
    Q1 = 1;
    P1 = LED_Mask[digit2];
    delay(100000);
    P1 = 0xFF;

    // Hiển thị chữ số hàng đơn vị
    Q4 = 1;
    Q3 = 1;
    Q2 = 1;
    Q1 = 0;
    P1 = LED_Mask[digit3];
    delay(100000);
    P1 = 0xFF;
}

void uart_init() {
    TMOD |= 0x20;  // Timer 1 chế độ 2
    TH1 = 0xFD;    // Baud rate 9600 cho 11.0592 MHz
    SCON = 0x50;   // Chế độ UART 8-bit, cho phép nhận dữ liệu
    TR1 = 1;       // Khởi động Timer 1
}

void uart_send_string(char* str) {
    while (*str) {
        SBUF = *str++;
        while (TI == 0);  // Chờ hoàn thành gửi TX
        TI = 0;           // Xóa cờ TI cho byte tiếp theo
    }
    SBUF = '\r';
    while (TI == 0);
    TI = 0;
    SBUF = '\n';
    while (TI == 0);
    TI = 0;
}

void main() {
    u8 i = 0;
    char buffer[404];  // Bộ đệm cho tất cả số + dòng mới
    char *ptr = buffer;  // Con trỏ đến vị trí hiện tại trong bộ đệm
    uart_init();    // Khởi tạo UART

    // Điền bộ đệm với các số và dòng mới
    for (i = 0; i <= 100; i++) {
        sprintf(ptr, "%03d\r\n", i);
        ptr += 6;  // Di chuyển con trỏ đến vị trí tiếp theo trong bộ đệm
    }

    // Gửi toàn bộ bộ đệm qua UART
    uart_send_string(buffer);

    while (1) {
        for (i = 0; i <= 100; i++) {
            Display(i);
            delay(5000);
        }
    }
}
