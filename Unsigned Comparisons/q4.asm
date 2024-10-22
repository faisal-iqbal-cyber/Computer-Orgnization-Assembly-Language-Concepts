[org 0x100]

mov cx, 5
mov bx, 0
loop: add ax, bx 
      add bx, 1
      cmp bx, cx
      jbe loop

mov ax, 0x4c00
int 0x21