[org 0x100]

	mov si,num1

	mov ax,[si]

	mov bx,[si+2]

	
	
mov ax,0x4c00
int 0x21

num1: db 0x0A
num2: db 0x1B
num3: db 0x2C
num4: db 0x3D
