.586
.model flat
.stack 1000h
.data
.code
inicio PROC
	;Ejemplo de nstrucciones de comparación
	;Resta
	MOV BL,-3
	SUB BL,05h
	CMP BL,05h
inicio ENDP 
end