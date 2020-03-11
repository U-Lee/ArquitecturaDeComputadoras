.586
.model flat
.stack 1000h
.data
arreglo  DB 1,5,5,9,7,8,5,9,10
contador DB 0
.code
inicio PROC
	;Programa que nos dicie cuantas veces se repite un elemento en el arrglo (Palabra)
    MOV EBX, OFFSET arreglo
    MOV ECX,10
    ciclo: 
        MOV AL,[EBX] ; AL <- arreglo 
        CMP AL,5 ; El número que queremos comparar
        jz es_igual ; seguida de la instrucción JZ (salto si es cero)
    continua: INC EBX
        loop ciclo
    es_igual:
        INC contador
        jmp continua
inicio ENDP 
end