.586
.model flat
.stack 1000h
.data
arreglo  DB 1,5,5,9,7,8,5,9,10
contador DB 0
.code
inicio PROC
	;Programa que nos dice cuantas veces se repite un elemento en el arrglo (Palabra)
    ;Tarea : Ahora que el contador indique los números que sean mayores que 5
    ;Cuantas veces se repite el primer valor del arreglo 
    MOV EBX, OFFSET arreglo
    MOV ECX,10
    ciclo: 
        MOV AL,[EBX] ; AL <- arreglo 
        CMP AL,5 ; El número que queremos comparar
        jz es_igual ; seguida de la instrucción JZ (salto si es cero)
    continua: INC EBX
        loop ciclo
    MOV AH,0
    es_igual:
        INC contador
        jmp continua
inicio ENDP 
end