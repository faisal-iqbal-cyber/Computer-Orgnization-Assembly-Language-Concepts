[org 0x100]

mov ax,[0x0025]

mov [0x0FFF],ax

mov ax,0x4c00

int 0x21

num1: dw 6