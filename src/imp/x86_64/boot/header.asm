section .multiboot_header
header_start:
 	;we all code is in between
	;all magic number
	dd 0xe85250d6; multiboot
	;archeticture 
	dd 0 ;protected mode 
	;header legth
	dd header_end-header_start
	;checksum
	dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))	
	;end tag
	dw 0
	dw 0
	dd 8
header_end:
