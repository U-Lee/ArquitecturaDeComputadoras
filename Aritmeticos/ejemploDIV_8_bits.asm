.586
.model flat
.stack 1000h
.data
valor DB 255
residuos  DB 3 DUP(0)
cocientes DB 3 DUP(0)
.code
inicio PROC
	; AX se divide entre BL -> En este caso seria -> 255/10
	; AH Contien el residuo
	; AL Contiene el cociente con el signo
	MOV AX,WORD PTR valor
	MOV BL,10
	DIV BL
	MOV residuos,AH
    MOV cocientes,AL
	DIV BL
	MOV residuos+1,AH
    MOV cocientes+1,AL
	DIV BL
	MOV residuos+2,AH
    MOV cocientes+2,AL
inicio ENDP 
end