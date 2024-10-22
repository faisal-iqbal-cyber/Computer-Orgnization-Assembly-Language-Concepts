[org 0x100]

; sp = fffe intially sp value
;mov bp, sp now bp = fffe

push 5  ; fffc
push 4  ; fffa
push 2  ; fff8
push 1  ; fff6
; mov word [bp-2], 9
mov bp, sp  ; here bp will be fff6 so for reaching the first entery we will add 6 in bp 
mov word [bp+6], 9



mov ax, 0x4c00
int 0x21
