[org 0x100]

jmp start:

findmin:   

bubblesort:  mov bx, 0
             mov byte [swap], 0


startordering:mov ax, [array+bx]
	      cmp ax, [array+bx+2]
              jae checknext

      	      mov dx, [array+bx+2]
              mov [array+bx], dx
              mov [array+bx+2], ax

              mov byte [swap], 1

checknext:    add bx, 2
              sub cx, 1
              cmp cx, 2
              jae startordering
    
              cmp byte [swap], 1
              je bubblesort

              mov si, array
              add si, 8
              mov [minvalueaddress], si

              ret 

start:        mov bx, 0
              mov cx, [size]
              call findmin

mov ax, 0x4c00
int 0x21
array: dw 1,4,2,3,5
size: dw 5
swap: db 0
minvalueaddress: dw 0