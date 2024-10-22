[org 0x100]

mov ax, 5
mov dx, 0
mov bx, array
mov cx, [size]

search: cmp ax, [bx]
	jne next
	mov dx, bx
	jmp end
next:   add bx, 2
        sub cx, 1
	cmp cx, 0
	jne search

end:    mov ax, 0x4c00
        int 0x21

array: dw 0,2,3,4,5
size: dw 5