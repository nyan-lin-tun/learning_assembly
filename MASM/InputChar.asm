TITLE Input a Character Program	(InputChar.asm)
.MODEL small
.STACK 100h
.386
.data
    char db '$'
.code
main PROC
	mov ax,@data		; initialize DS
	mov ds,ax
	; Input a character from standard input device
	mov ah, 01h	;mov ah,01h or 08h
	int 21h
	mov char,al
	; Output the typed character to the screen
	mov ah,02h
	mov dl, char
	int 21h
skip: .Exit
main ENDP
	END main