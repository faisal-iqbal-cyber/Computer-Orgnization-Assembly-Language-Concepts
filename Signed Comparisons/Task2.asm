[org 0x100]
	mov dx,0
	mov si,0
	mov cx,8
	mov bx,array
	mov ax,[array+4] ; we want to find 3

start:
	cmp ax,[bx+si]
	jne l1
	mov dx,1
	jmp end

l1:
	add si,2
	cmp si,cx
	jne start	

end:mov ax,0x4c00
int 0x21

array: dw 1,2,3,4,5