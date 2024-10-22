[org 0x100]
			;Zeros,Ones and Other Number Counter Program
	mov cx,7
	mov bx,0
	mov si,0
	mov di,0
	mov dx,0
	mov bp,0
l1:
	mov ax,[num1+bx]
	cmp ax,0
	je zero_case
	
	mov ax,[num1+bx]
	cmp ax,1
	je ones_case

	mov word[others+bp],ax
	add word[count_others],1
	add bp,2
	jmp updation

zero_case:
	mov word[zero+si],ax
	add word[count_zeros],1
	add si,2
	jmp updation

ones_case:
	mov word[ones+di],ax
	add word[count_ones],1
	add di,2
	jmp updation		
	
updation:
	sub cx,1	
	add bx,2
	cmp cx,0
	jne l1

mov ax,0x4c00
int 0x21

num1:dw 1,0,1,3,1,0,4
zero:dw 1,1
ones:dw 0,0,0
others:dw 0,0

count_zeros:dw 0
count_ones:dw 0
count_others:dw 0

	;This program will take about 138 Bytes(which is 8A in Hexadecimal) can see in pic