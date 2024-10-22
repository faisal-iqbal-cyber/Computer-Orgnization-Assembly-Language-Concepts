[org 0x100]

	;base+offsite

	mov bx,num1

	add dl,[bx]

	add dl,[bx+1]

	add dl,[bx+2]

	add dl,[bx+3]

	add dl,[bx+4]	
	
	
mov ax,0x4c00
int 0x21

num1: db 1,2,3,4,5