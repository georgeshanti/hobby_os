os-vdmk: bootloader/target/os.bin
	VBoxManage convertfromraw --format VMDK ./bootloader/target/os.bin os.vmdk --uuid 6d1d20ee-9f89-11eb-a8b3-0242ac130003

# os.bin: boot.o
# 	ld -m elf_i386 -o os.bin --oformat binary -e init ./bootloader/target/boot.o 

hobby_os: 
	cargo build --target x86-64.json

bootloader/target/os.bin: bootloader/target/p1_bootloader.bin bootloader/target/p2_bootloader.bin
	cat ./bootloader/target/p1_bootloader.bin ./bootloader/target/p2_bootloader.bin > bootloader/target/os.bin

bootloader/target/p1_bootloader.bin:
	nasm -o ./bootloader/target/p1_bootloader.bin ./bootloader/p1_bootloader/p1_bootloader.asm

bootloader/target/p2_bootloader.bin:
	nasm -o ./bootloader/target/p2_bootloader.bin ./bootloader/p2_bootloader/p2_bootloader.asm