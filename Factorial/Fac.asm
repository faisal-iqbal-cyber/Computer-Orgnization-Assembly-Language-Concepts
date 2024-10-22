[org 0x100]
				;Factorial Program
mov bx, num1
mov ax , [bx]
mov si, ax
sub si, 1
mov cx, si

label:
add dx,ax
sub cx,1
cmp cx,0
jne label

;updation

mov [result], dx
mov dx,0
mov ax, [result]
sub si,1
mov cx,si
cmp si,1
jne label

mov ax, 0x4c00
int 0x21

num1: dw 6
result: dw 0 
	;Whole Program will take about 54 Bytes which actually(36 in Hexadecimal)can see in pic