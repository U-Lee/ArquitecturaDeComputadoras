.586
.model flat
.stack 1000h
.data
.code
inicio PROC
    ; 8 bits
	;Ejemplo de multimplicación
	;Muti 5 x 2
	MOV AL,5
	MOV BL,2
	MUL BL
inicio ENDP 
end