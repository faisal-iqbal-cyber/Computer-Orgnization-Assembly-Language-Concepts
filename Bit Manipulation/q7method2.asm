[org 0x100]



mov bx, 0
mov ax, [num2+bx]
add [num1+bx], ax
add bx, 2

loop1:    mov ax, [num2+bx]
	  adc [num1+bx], ax
          add bx, 2
          cmp bx, 6
 	  jbe loop1

mov ax, 0x4c00
int 0x21
num1: dq 3250456780
num2: dq 3400345678
