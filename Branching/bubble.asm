[org 0x100]
	
	
	mov bx,0
	mov cx,9
start:
	mov bx,0
	mov byte[swap],0

l1:
	mov ax,[num1+bx]
	cmp ax,[num1+bx+2]
	jbe noswap
	
	mov dx,[num1+bx+2]
	mov [num1+bx+2],ax
	mov[num1+bx],dx

	mov byte[swap],1

noswap:
	add bx,2
	cmp bx,18
	jne l1
	sub cx,1
	cmp cx,2
	jae l1

	cmp byte[swap],1
	je start

	jmp end
	

end:mov ax,0x4c00
int 0x21

num1: dw 5,6,9,2,1,4,3,8,7
swap: dw 0