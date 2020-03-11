.586
.model flat
.stack 1000h
.data
valor DB 255 ; 8 BITS
cociente DB 3 DUP(0)
residuo DB 3 DUP(0)
loquees DW 3 DUP(0) ;16 bits
valores DB 3 DUP(0)
.code
inicio PROC
	; AX se divide entre BL -> En este caso seria -> 255/10
	; AH Contien el residuo
	; AL Contiene el cociente con el signo

	MOV AX,WORD PTR valor
	MOV BL,10				
	
	DIV BL					

	MOV cociente,AL
	MOV residuo,AH
	MOV loquees,AX
	MOV valores,BL

	MOV AH,0
	DIV BL

	MOV cociente+1,AL
	MOV residuo+1,AH
	MOV loquees+2,AX
	MOV valores+1,BL
	

	inicio ENDP
end
