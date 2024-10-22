[org 0x100]
	mov di,0
	mov bx,num1
	mov dx,[bx+di]
	add di,2
	add dx,[bx+di]
	add di,2
	add dx,[bx+di]
	add di,2
	add dx,[bx+di]
	add di,2
	add dx,[bx+di]
	add di,2
	add dx,[bx+di]
mov ax,0x4c00
int0x21

num1:db 1,2,3,4
num2:db 5,6,7,8
num3:db 9,0,1,2	
	
	