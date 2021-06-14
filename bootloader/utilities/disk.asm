
P2_BOOTLOADER_SPACE		equ		7e00h

BOOT_DISK:
	db		0

loadP2Bootloader:
	mov		bx, P2_BOOTLOADER_SPACE				; Memory address to store sector data
	mov		al, 02h								; No of secotrs to read
	mov		dl, [BOOT_DISK]						; Drive from which to read sectors
	mov		ch, 00h								; Cylinder to read from
	mov		dh, 00h								; Head to read from
	mov		cl, 02h								; Sector to start reading from
	mov		ah, 02h								; Function to read sectors from disk
	int		13h
	jc		printP2BootError

	ret

printP2BootError:
	mov		si, p2BootErrorMessage
	call	print
	ret

p2BootErrorMessage: db "Failed to load p2Bootloader", 0