A SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: A
ORG 1000H
S: 
	MOV AL,80H
	OUT 1FH,AL
	MOV AL,0FFH	 ;Disable 7 Segment Display [port A]
	OUT 19H,AL
	
L:
	MOV AL,04H	;Turn on Yellow LED
	OUT 1BH,AL
	MOV CX,0FFFFH	;Delay for 1 second
	L1: LOOP L1
	MOV AL,00H	;Turn off LED
	OUT 1BH,AL
	
	MOV AL,08H	;Turn on Red LED
	OUT 1BH,AL
	MOV CX,0FFFFH	;Delay for 1 second
	L2: LOOP L2
	MOV AL,00H	;Turn off LED
	OUT 1BH,AL

	MOV AL,02H	;Turn on Green LED
	OUT 1BH,AL
	MOV CX,0FFFFH	;Delay for 1 second
	L3: LOOP L3
	MOV AL,00H	;Turn off LED
	OUT 1BH,AL
	
	MOV AL,01H	;Turn on Red LED
	OUT 1BH,AL
	MOV CX,0FFFFH	;Delay for 1 second
	L4: LOOP L4
	MOV AL,00H	;Turn off LED
	OUT 1BH,AL
	
	JMP L
A ENDS 
END S
	