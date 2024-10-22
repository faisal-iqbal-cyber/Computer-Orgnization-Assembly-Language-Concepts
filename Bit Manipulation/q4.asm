[org 0x100]

shr byte [num+7], 1
rcr byte [num+6], 1
rcr byte [num+5], 1
rcr byte [num+4], 1
rcr byte [num+3], 1
rcr byte [num+2], 1
rcr byte [num+1], 1
rcr byte [num+0], 1

mov ax, 0x4c00
int 0x21
num: dq  9876543210123
