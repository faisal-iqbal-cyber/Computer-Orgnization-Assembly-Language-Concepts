[org 0x100]

		
	;it is direct Adressing

	add dl,[num1]

	add dl,[num1+1]

	add dl,[num1+2]

	add dl,[num1+3]

	add dl,[num1+4]
	
	
mov ax,0x4c00
int 0x21

num1: db 1,2,3,4,5
