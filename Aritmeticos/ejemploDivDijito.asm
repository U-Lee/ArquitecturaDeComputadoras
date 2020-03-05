.586
.model flat
.stack 1000h
.data
valor DB 23
digitos DB 3 DUP(1)
.code
inicio PROC
	;Ejemplo DIV
	MOV AX,WORD PTR valor	; AX <- valor  Trae 16 bits
	; MOV AL,valor
	; MOV BL,10
	MOV BL,10				; BL <- 10
	DIV BL					; BL/AX -> AL -> AH 
	MOV digitos,AH			; digitos[0] <- AH
	MOV AH,0				; AH, <- 0
	DIV BL
	MOV digitos+1,AH
	MOV digitos+2,AL
inicio ENDP 
end