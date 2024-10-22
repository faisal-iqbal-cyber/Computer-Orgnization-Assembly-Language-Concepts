[org 0x100]

	mov cx,[num1]

	mov dx,150

	add cx,dx

	sub dx,cx

mov ax,0x4c00

int 0x21
        
num1:dw 1500

	