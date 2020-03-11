.586
.model flat
.stack 1000h
.data
valor DB 255
digitos DB 3 DUP(0)
.code
inicio PROC
	MOV AX,WORD PTR valor
	MOV BL,10
	DIV BL
	MOV digitos,AH
	DIV BL
	MOV digitos+1,AH
	MOV digitos+2,AL
inicio ENDP 
end