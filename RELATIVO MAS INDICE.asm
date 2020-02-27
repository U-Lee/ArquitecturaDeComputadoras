.586
.model flat
.stack 1000h
.data
dato DD 154h,12348h
.code
inicio PROC

    MOV EBX,3
    ;Direcionamiento relativo MÁS INDICE

    MOV ESI,1
    MOV ax, WORD PTR dato[EBX+ESI]

    inicio ENDP 
end