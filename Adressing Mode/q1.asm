[org 0x100]

	mov bx,num1
	

	mov al,[bx]
	add dl,al

	mov al,[bx+1]
	add dl,al

	mov bx,num2

	mov al,[bx]

	add dl,al
	add dl,al

	mov al,[bx+1]
	add dl,al

	
mov ax,0x4c00
int 0x21

num1: dw 0x10AB
num2: dw 0x23CD
