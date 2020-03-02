.586
.model flat
.stack 1000h
.data
operando1 DQ 547893A512761723h
operando2 DQ 4123A5B3F573418Bh
.code
inicio PROC
	;	547893A512761723h
	;					+
	;	4123A5B3F573418Bh
	;	Para sumarlos lo separamos
	MOV EAX, DWORD PTR operando1 ; EAX = 12761723
	MOV EBX, DWORD PTR operando2 ; EBX = F573418B
	ADD EAX,EBX					 ; Resultado de la parte baja
	;-----------------------------------------------------------
	;Ahora vamos por la parte alta
	MOV EBX, DWORD PTR operando1 + 4 ; EBX = 547893A5
	MOV ECX, DWORD PTR operando2 + 4 ; ECX = 4123A5B3
	;ADD EBX,ECX CON ESTE LE FALTA EL ACARREO
	ADC EBX,ECX ; iNCLUIMOS EL ACARREO

inicio ENDP 
end