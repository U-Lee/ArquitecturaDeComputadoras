.586
.model flat
.stack 1000h
.data
arreglo   DB 5,7,2,8,1
resultado DB 0
.code
inicio PROC
	;Aritmética BCD
	; LOOP
	MOV ECX,5 ; contador de loop
	MOV AX,0
	;MOV EBX,0
	ciclo: 
		ADD AL,arreglo[ECX-1]
		loop ciclo
	MOV resultado,AL 
inicio ENDP 
end