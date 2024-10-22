[org 0x100]	

	mov ax,62

	cmp ax,92

	je l1
	
	cmp ax,82

	je l2

	cmp ax,72

	je l3

	cmp ax,62

	je l4

	jmp end
l1:

	mov dx,40

	jmp end
l2:
	mov dx,30
	jmp end

l3:
	mov dx,20
	jmp end

l4:
	mov dx,10
	jmp end


end: mov ax,0x4c00

int 0x21
