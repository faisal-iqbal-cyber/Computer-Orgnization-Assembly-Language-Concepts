[org 0x100]

mov ax, 20
mov bx, 30

cmp ax, bx
jne skip

; run special code

skip: ; run remianing code



mov ax, 0x4c00
int 0x21