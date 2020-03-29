mov ah,0x0e ;Tells the character in al should be written in tty mode
mov al,'H'
int 0x10 ;interrupt for video services
mov al,'E'
int 0x10
mov al,'L'
int 0x10
int 0x10
mov al,'O'
int 0x10
jmp $ ;jump to current address

;padding
times 510 - ($-$$) db 0
dw 0xaa55 ;magic bootsector number