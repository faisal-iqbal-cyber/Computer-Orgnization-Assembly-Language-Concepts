[org 0x100]
	mov bx,num1
	mov bp,num1
	mov pi,num1
	;mov ax,[bx+bp];illegal(base+base)
	;mov ax,[bx+bx];illegal(base+base)
	;mov ax,[bx+pi];legal(base+index)

	
	


	
	
	



mov ax,0x4c00
int 0x21

num1:dw 1,2,3,4,5,6
sum:dw 0
	