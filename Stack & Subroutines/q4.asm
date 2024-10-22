[org 0x100]

jmp start

sumarray: 
mov ax, 0

forloop: add ax, [bx]
         add bx, 2
         sub cx, 1
         cmp cx, 1
         jae forloop
         ret 

start:  mov cx, [size]
        mov bx, array
        call sumarray 
        mov dx, 10
        add dx, ax


mov ax, 0x4c00
int 0x21
array: dw 1,3,4,5,6,-4,-2,-7
size: dw 8















