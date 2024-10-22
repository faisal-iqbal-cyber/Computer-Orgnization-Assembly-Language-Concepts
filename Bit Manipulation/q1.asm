[org 0x100]

shl byte [num], 1
rcl byte [num+1],1

; mov ax, [num]
;shl ax, 1


mov ax, 0x4c00
int 0x21
num: dw 4000  
















