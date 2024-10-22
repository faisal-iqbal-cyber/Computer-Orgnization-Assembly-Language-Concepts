[org 0x100]
	mov ax,[n]
	mov cx,[size]
	mov bx,array
	mov dx,0 
	mov si,0
	jmp startloop
	

startloop:
	cmp cx,0
	je end
loop1:
	cmp ax,[bx+si]
	jae next 
	add dx,1
	
next:
	add si,2
	sub cx,1
	cmp cx,1
	jae loop1
		

end:mov ax,0x4c00
int 0x21

array: dw 0,1,2,3,4,5,6,7,8,9
size: dw 10
n:dw 3