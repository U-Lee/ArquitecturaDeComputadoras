.586
.model flat
.stack 1000h
.data
.code
inicio PROC
	;Ejemplo de DIV
	;DIV DE 16 BITS CON DECIMALES
	; 50 / 40
	; 50 = 32h -> -> 0000032h -> 0000|032h
	; 40 = 
	MOV AX,032h
	MOV DX,0000h
	MOV BX,40	;Se guarda en binario
	DIV BX



inicio ENDP 
end