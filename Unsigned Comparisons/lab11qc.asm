[org 0x100]

mov ax, 50

	 cmp ax, 92
	 jne elseif1
	 mov bx, 40
	 jmp end

elseif1: cmp ax, 82
	 jne elseif2
	 mov bx, 30
	 jmp end
elseif2: cmp ax, 72
	 jne elseif3
	 mov bx, 20
	 jmp end
elseif3: cmp ax, 62
	 jne end
         mov bx, 10

end: mov ax, 0x4c00
     int 0x21