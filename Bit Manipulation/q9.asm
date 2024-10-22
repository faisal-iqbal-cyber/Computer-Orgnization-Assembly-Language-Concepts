[org 0x100]

mov cx, 8
mov ax, [multiplicand]
mov dl, [multiplier]
multiplication: shr dl, 1
                jnc checknextbit
                add [rezult], ax 

checknextbit:   shl ax, 1
                sub cx, 1
                cmp cx, 1
                jae multiplication

mov ax, 0x4c00
int 0x21

multiplicand: dw 50
multiplier: db 20
rezult: dw 0