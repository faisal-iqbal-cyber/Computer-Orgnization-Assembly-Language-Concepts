[org 0x100]
	mov bl,9
	mov al,-4
	cmp al,bl
	jge end


end:mov ax,0x4c00

int 0x21

	