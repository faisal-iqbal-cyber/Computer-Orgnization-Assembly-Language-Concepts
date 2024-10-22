[org 0x100]

	mov cx,10
	mov dx,15

	add cx,dx

	sub dx,cx

mov ax,0x4c00

int 0x21

	