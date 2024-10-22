[org 0x100]



mov bx, 0

check: cmp bx, 0
       jne adcc

firstadd: mov ax, [num2+bx]
	  add [num1+bx], ax
next:     add bx, 2
	  cmp bx, 6
          jbe check
adcc:     mov ax, [num2+bx]
	  adc [num1+bx], ax
          cmp bx, 6
 	  jbe next

mov ax, 0x4c00
int 0x21
num1: dq 3250456780
num2: dq 3400345678
