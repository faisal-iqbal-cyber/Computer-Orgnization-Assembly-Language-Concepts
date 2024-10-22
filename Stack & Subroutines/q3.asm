[org 0x100]

jmp start

sum:  mov ax, si
      add ax, di  
      ret 


start: mov ax, 70
       mov bx, 80
       mov si, 35
       mov di, 40
       call sum 	
       mov cx, 40
       add cx, ax

mov ax, 0x4c00
int 0x21
