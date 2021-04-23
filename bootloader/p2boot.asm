[bits 16]
[org 0x7e00]

boot:										; the boot function/label
	mov 	si, string1						; load string
	call	print							; print string onto screen
	jmp		$								; end boot cycle

%include	"bootloader/print.asm"

string1:		db "Running Phase-2-Bootloader.....", 0Ah, 0Dh, 0

times 	1024-($-$$) db 0           			; fill the output file with zeroes until 510 bytes are full