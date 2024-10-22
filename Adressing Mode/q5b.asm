[org 0x100]

;it is Indirect Adressing

	mov si,num1

	add dl,[si]

	add dl,[si+1]

	add dl,[si+2]

	add dl,[si+3]

	add dl,[si+4]

	
	

	

	
	
	
mov ax,0x4c00
int 0x21

num1: db 1,2,3,4,5