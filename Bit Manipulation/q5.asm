[org 0x100]

mov al, [num2]
add [num1], al
; add al, [num1] false 

mov al, [num2+1]
adc [num1+1], al


mov ax, 0x4c00
int 0x21
num1: dw 3250
num2: dw 3400
