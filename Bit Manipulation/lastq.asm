[org 0x100]

mov cx, 16
mov ax, [multiplier]
multiplication: shr ax, 1
; shr word [multiplier+2], 1
; rcr word [multiplier+0], 1
                jnc checknextbit
		mov dx, [multiplicand+0]
                add [rezult+0], dx
                mov dx, [multiplicand+2]
                add [rezult+2], dx
		mov dx, [multiplicand+4]
                add [rezult+4], dx
		mov dx, [multiplicand+6]
                add [rezult+6], dx

checknextbit:   shl word [multiplicand+0], 1
	        rcl word [multiplicand+2], 1
		rcl word [multiplicand+4], 1
	        rcl word [multiplicand+6], 1
                sub cx, 1
                cmp cx, 1
                jae multiplication

mov ax, 0x4c00
int 0x21

multiplicand: dq 500000
multiplier: dw 20
rezult: dq 0