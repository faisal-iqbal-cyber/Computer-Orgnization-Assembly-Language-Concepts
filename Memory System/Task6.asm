[org 0x100]

mov ax,[num1]

add dx,ax

mov ax,[num3]

add dx,ax


mov ax,0x4c00

int 0x21

num1: db 0x10

num2: db 0xAB

num3: db 0x23

num4: db 0xCD