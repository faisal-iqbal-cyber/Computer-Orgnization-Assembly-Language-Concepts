[org 0x100]

push 5
push 4
push 2
push 1

pop ax
pop bx
pop cx
pop dx


mov ax, 0x4c00
int 0x21

