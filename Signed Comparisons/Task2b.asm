[org 0x100]
	mov word[size],5
	mov cx,[size]
	mov si,0
	mov bx,array
	mov ax,5 

start:
	cmp ax,[bx]
	jne l1
	mov dx,1
	jmp end

l1:
	add bx,2
	sub cx,1
	cmp cx,0
	jne start	

end:mov ax,0x4c00
int 0x21
array: dw 1,2,3,4,5
size: dw 0