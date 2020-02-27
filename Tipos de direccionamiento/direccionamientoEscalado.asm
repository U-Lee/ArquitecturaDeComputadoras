.586
.model flat
.stack 1000h
.data
dato DD 154h,12348h
arreglo DW 1,2,3,4,5,6,7
.code
inicio PROC

    ;Direccionamiento escalado
    ;Multiplicar el valior de la base por una constante
    ;Memoria = [01,00,02,03,00,04,00,05,00,06,00,07
    ;
    MOV CX,0Ah
    MOV EBX,3
    MOV arreglo[EBX*2],CX


    inicio ENDP 
end