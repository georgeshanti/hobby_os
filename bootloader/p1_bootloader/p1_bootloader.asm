[bits 16]
[org 0x7c00]

boot:										; the boot function/label
	mov		[BOOT_DISK], dl					; store boot disk value into variable
	mov 	si, string1						; load string
	call	print							; print string onto screen
	call	loadP2Bootloader
	mov 	si, string2						; load string
	call	print							; print string onto screen
	push	P2_BOOTLOADER_SPACE
	ret
	; jmp		$								; end boot cycle

%include	"bootloader/utilities/print.asm"
%include	"bootloader/utilities/disk.asm"

string1:		db "Loading Phase-2-Bootloader.....1", 0Ah, 0Dh, 0
string2:		db "Loaded Phase-2-Bootloader1", 0Ah, 0Dh, 0

times 	510-($-$$) db 0           			; fill the output file with zeroes until 510 bytes are full
dw 		0xaa55                       		; magic number that tells the BIOS this is bootable