.586
.model flat
.stack 1000h
.data
datos DD 1,2,3
dato1 DW 38
.code
inicio PROC
    ;Modos de direcciónamiento
    ;http://cv.uoc.edu/annotation/8255a8c320f60c2bfd6c9f2ce11b2e7f/619469/PID_00218277/PID_00218277.html

    ; - Sin mecanismo que permiten conocer la ubicación de un objeto (dato o instrucción)
    ; - Los modos de direccionamiento son la diferentes formas de trasformación del campo de operando
    ;   de la instruccion en la direccion del operando



    ; MOV

    ;La instrucción MOV transfiere bytes o palabras de datos entre registros, o entre registros y la memoria en los
    ;microprocesadores del 8086 al 80286.

    ;---------------------------------------------------------------------------
    ;                           Direcciónamiento REGISTRO                       |
    ;---------------------------------------------------------------------------
    ; Este modo es similiar al directo. La única diferencia es que el campo
    ; de dirección referencia un registro en lugar de una dirección de memoria pricipal

    mov ax,bx

    ;ax
        ;Se puede hacer referencia a EAX como un registro de 32 bits (EAX), como
        ;un registro de 16 bits (AX) o como uno de dos registros de 8 bits (AH y
        ;AL). 

    ;bx
        ;Este índice base puede direccionarse como EBX, BX, BH o BL

    ;----------------------------------------------------------------------------
    ;                           Direcciónamiento DIRECTO                         |
    ;----------------------------------------------------------------------------
    ;Este modo de direccionamiento mueve un byte o palabra entre una posición de
    ;memoria y un registro.
    ;Ejemplo: la instrucción 
    
    ;   MOV CX,LISTA

    ;copia el contenido del tamaño de una palabra de la posición de memoria LISTA al registro CX.) }
    
    ;Ejemplo: la instrucción MOV ESI,LISTA copia un número de 32 bits, almacenado en cuatro bytes 
    ;consecutivos de memoria, dela posición LIST al registro ESI.

    ;Dirección de una memoria a otra memoria solo con MOVS
    ;Por ejemplo : Aqui lo que hacemos es lo que esta en el arreglo datos
    ;lo estamos pasando al registro AX de 16 bits

    mov ax,word ptr datos



    ;word ptr
        ; En algunos casos el direccionamiento indirecto requiere que se especifique el tamaño de los
        ; datos. Este tamaño se especifica mediante la directiva especial del ensamblador 
        ;   BYTE PTR
        ;   WORD
        ;   PTR 
        ;   DWORD PTR
        ; Estas directivas indican el tamaño de los datos de la memoria direccionados
        ; por el apuntador de memoria (PTR).
    
    
    ;----------------------------------------------------------------------------
    ;                           Direcciónamiento INMEDIATO                       |
    ;----------------------------------------------------------------------------

    ; SOLO CON CONSTANTES 


    ; MOV : Mover o reemplazar
    ; A   : Registro
    ; L   : Baja
    ; H   : Alto
    ; X   : Todo el registro


    ;El direcciónamiento inmediato, que consiste en poner un valor númerico (constante)
    ;directameinte en un registro

    ;En este ejemplo le ponemos un valor en hexadedimal

    mov bx,5123h

    ;----------------------------------------------------------------------------
    ;                  Direcciónamiento INDIRECTO POR REGISTRO                   |
    ;----------------------------------------------------------------------------
    
    ;VARIABLES REFERENCIADAS ATRAVES DE APUNTADORES 
    
    ;La dirección del operando se encuentra en el registro
    
    

    ; En el DIRECCIONAMIENTO INDIRECTO , el operando indica dónde está almacenada 
    ; la dirección de memoria que contiene el dato que queremos utilizar.


    ; Si hace referencia a un registro de la máquina, la dirección de memoria (dirección efectiva)
    ; que contiene el dato estará en este registro y hablaremos de direccionamiento indirecto a registro; 
    ; si hace referencia a una posición de memoria, la dirección de memoria (dirección efectiva) que contiene 
    ; el dato estará almacenada en esta posición de memoria y hablaremos de direccionamiento indirecto a memoria.


    ; Este modo de direccionamiento se utiliza a menudo para acceder a estructuras de datos como vectores, matrices o listas, 
    ; por lo que es muy habitual que después de cada acceso se incremente o decremente el registro índice un valor constante 
    ; (que depende del tamaño y el número de posiciones de memoria de los datos a los que se accede).


    ;Qué valor se guarda en AX? 
    ;El valor apuntado por EBX
    mov ax, [EBX]
    ;Queremos direccionar el 38 (dato1)
    ;OFFSET : Regresa el valor de la etiqueta
    
    ;Dirección de memoria

    ; OFFSET

    ; La directiva OFFSET indica al ensamblador
    ; que debe cargar el registro BX con la dirección de desplazamiento de la posición de memoria TABLA,
    ; no con el contenido de TABLA. 
    ; 
    ; Por ejemplo, la instrucción 
    ;
    ;          MOV BX,DATOS copia el contenido de la posición de memoria DATOS en BX,
    ; 
    ; mientras que la instrucción 
    ;          MOV BX,OFFSET DATOS copia la dirección de desplazamiento DATOS en BX. 
    ;
    ;Cuando se utiliza la directiva OFFSET con la instrucción
    ; MOV, el ensamblador calcula la dirección de desplazamiento y después utiliza una instrucción MOV
    ; inmediata para cargar la dirección en el registro de 16 bits especificado.

    mov EBX, OFFSET dato1         ;Asignar a EBX la dirección del dato uno ; ptr = &x
    mov EBX, DWORD PTR dato1      ; ptr = x


    ;----------------------------------------------------------------------------
    ;                  Direcciónamiento BASE RELATIVO                            |
    ;----------------------------------------------------------------------------
    
    ;Primera forma

    mov EBX,1
    ;QUÉ TENGO QUE HACER PARA DIRECCIONAR LA B
    MOV AL,arreglo[EBX]

    ;Segunda forma
    ;Base relativo

    MOV EBX, OFFSET arreglo
    ;QUÉ TENGO QUE HACER PARA DIRECCIONAR LA B
    MOV AL,[EBX + 1]
    inicio ENDP 
end