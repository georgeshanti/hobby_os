print:
	push	ax
	mov		ah, 0eh
print_loop:
	lodsb
	cmp		al, 00h
	je		print_stop
	int 	10h
	jmp 	print_loop
print_stop:
	pop		ax
	ret