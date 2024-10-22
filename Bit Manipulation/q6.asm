[org 0x100]

mov ax, [num2+0]
add [num1+0], ax

mov ax, [num2+2]
adc [num1+2], ax

mov ax, [num2+4]
adc [num1+4], ax

mov ax, [num2+6]
adc [num1+6], ax


mov ax, 0x4c00
int 0x21
num1: dq 3250456780
num2: dq 3400345678
