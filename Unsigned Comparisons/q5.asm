[org 0x100]

mov cx, 5
mov ax, cx
loop1: sub ax, 1
       cmp ax, 0
       ja loop1  

mov ax, 0x4c00
int 0x21