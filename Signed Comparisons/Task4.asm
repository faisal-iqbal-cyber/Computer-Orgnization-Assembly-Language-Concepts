[org 0x100]
	mov byte[size],10
	mov cl,[size]
	mov si,0
	mov bx,array
	mov al,7 

start:
	cmp al,[bx]
	jne l1
	mov dl,1
	jmp end

l1:
	add bx,1
	sub cl,1
	cmp cl,0
	jne start	

end:mov ax,0x4c00
int 0x21

array: db 0,1,2,3,4,5,6,7,8,9
size: db 0