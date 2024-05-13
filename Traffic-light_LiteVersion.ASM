A SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: A
ORG 1000H
S:
MOV AL, 80H ;set control register
OUT 1FH, AL
MOV AL, 0FFH ;stop port A
OUT 19H, AL

L:
MOV AL, 01H ;turn Red LED on
OUT 1BH, AL
MOV CX, 0FFFFH ;delay for 1 second

;display 9 on seven segment
L1: LOOP L1
MOV AL, 090H ;display 9 on seven segment
OUT 19H, AL
MOV CX,0FFFFH ;delay for 1 second

LA: LOOP LA
MOV AL, 090H 
OUT 19H, AL
MOV CX,0FFFFH

;display 8 on seven segment
L2: LOOP L2
MOV AL, 0FFH ;turn off segment
OUT 19H, AL
MOV AL, 080H ;display 8 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L2A: LOOP L2A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 080H
OUT 19H, AL
MOV CX, 0FFFFH

;display 7 on seven segment
L3: LOOP L3
MOV AL, 0FFH ;turn off segment
OUT 19H, AL
MOV AL, 0D8H ;display 7 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L3A: LOOP L3A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 0D8H
OUT 19H, AL
MOV CX, 0FFFFH

;display 6 on seven segment
L4: LOOP L4 
MOV AL, 0FFH ;turn off segment
OUT 19H, AL
MOV AL, 082H ;display 6 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L4A: LOOP L4A 
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 082H
OUT 19H, AL
MOV CX, 0FFFFH

;display 5 on seven segment
L5: LOOP L5
MOV AL, 0FFH ;turn off 7 segment
OUT 19H, AL
MOV AL, 092H ;display 5 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L5A: LOOP L5A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 092H
OUT 19H, AL
MOV CX, 0FFFFH

;display 4 on seven segment
L6: LOOP L6
MOV AL, 0FFH ;turn off 7 segment
OUT 19H, AL
MOV AL, 099H ;display 4 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L6A: LOOP L6A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 099H
OUT 19H, AL
MOV CX, 0FFFFH

;display 3 on seven segment
L7: LOOP L7
MOV AL, 0FFH ;turn off 7 segment
OUT 19H, AL
MOV AL, 0B0H ;display 3 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L7A: LOOP L7A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 0B0H
OUT 19H, AL
MOV CX, 0FFFFH

;display 2 on seven segment
L8: LOOP L8
MOV AL, 0FFH ;turn off 7 segment
OUT 19H, AL
MOV AL, 0A4H ;display 2 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L8A: LOOP L8A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 0A4H
OUT 19H, AL
MOV CX, 0FFFFH

;display 1 on seven segment
L9: LOOP L9
MOV AL, 0FFH ;turn off 7 segment
OUT 19H, AL
MOV AL, 0F9H ;display 1 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L9A: LOOP L9A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 0F9H
OUT 19H, AL
MOV CX, 0FFFFH

;display 0 on seven segment
L10: LOOP L10
MOV AL, 0FFH ;turn off 7 segment
OUT 19H, AL
MOV AL, 0C0H ;display 0 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L10A: LOOP L10A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 0C0H
OUT 19H, AL
MOV CX, 0FFFFH

;turn on Red LED
L11: LOOP L11 
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 00H ;turn off Red LED
OUT 1BH, AL
MOV CX, 0FFFFH ;delay for 1 second

;turn on Yellow LED
L12: LOOP L12
MOV AL, 04H
OUT 1BH, AL
L12A: LOOP L12A
MOV AL, 04H
OUT 1BH, AL
L12B: LOOP L12B
MOV AL, 04H
OUT 1BH, AL
L12C: LOOP L12C
MOV AL, 04H
OUT 1BH, AL
MOV CX, 0FFFFH ;delay for 1 second
;END

L13: LOOP L13
MOV AL, 00H ;turn off Yellow LED
OUT 1BH, AL
MOV CX, 0FFFFH

L14: LOOP L14
MOV AL, 02H ;turn on Green LED
OUT 1BH, AL
MOV CX, 0FFFFH

;display 9 on seven segment
L15: LOOP L15
MOV AL, 090H ;display 9 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L15A: LOOP L15A
MOV AL, 090H
OUT 19H, AL
MOV CX, 0FFFFH

;display 8 on seven segment
L16: LOOP L16
MOV AL, 0FFH ;turn off 7 segment display
OUT 19H, AL
MOV AL, 080H ;display 8 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L16A: LOOP L16A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 080H
OUT 19H, AL
MOV CX, 0FFFFH

;display 7 on seven segment
L17: LOOP L17
MOV AL, 0FFH ;turn off 7 segment display
OUT 19H, AL
MOV AL, 0D8H ;display 7 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L17A: LOOP L17A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 0D8H
OUT 19H, AL
MOV CX, 0FFFFH

;display 6 on seven segment
L18: LOOP L18 
MOV AL, 0FFH ;turn off 7 segment display
OUT 19H, AL
MOV AL, 082H ;display 6 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L18A: LOOP L18A 
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 082H
OUT 19H, AL
MOV CX, 0FFFFH

;display 5 on seven segment
L19: LOOP L19 
MOV AL, 0FFH ;turn off 7 segment display
OUT 19H, AL
MOV AL, 092H ;display 5 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L19A: LOOP L19A 
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 092H
OUT 19H, AL
MOV CX, 0FFFFH

;display 4 on seven segment
L20: LOOP L20
MOV AL, 0FFH ;turn off 7 segment display
OUT 19H, AL
MOV AL, 099H ;display 4 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L20A: LOOP L20A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 099H
OUT 19H, AL
MOV CX, 0FFFFH

;display 3 on seven segment
L21: LOOP L21 
MOV AL, 0FFH ;turn off 7 segment display
OUT 19H, AL
MOV AL, 0B0H ;display 3 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L21A: LOOP L21A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 0B0H
OUT 19H, AL
MOV CX, 0FFFFH

;display 2 on seven segment
L22: LOOP L22 
MOV AL, 0FFH ;turn off 7 segment display
OUT 19H, AL
MOV AL, 0A4H ;display 2 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L22A: LOOP L22A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 0A4H
OUT 19H, AL
MOV CX, 0FFFFH

;display 1 on seven segment
L23: LOOP L23 
MOV AL, 0FFH ;turn off 7 segment display
OUT 19H, AL 
MOV AL, 0F9H ;display 1 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH
L23A: LOOP L23A
MOV AL, 0FFH
OUT 19H, AL 
MOV AL, 0F9H
OUT 19H, AL
MOV CX, 0FFFFH

;display 0 on seven segment
L24: LOOP L24 
MOV AL, 0FFH ;turn off 7 segment display
OUT 19H, AL
MOV AL, 0C0H ;display 0 on seven segment
OUT 19H, AL
MOV CX, 0FFFFH ;delay for 1 second
L24A: LOOP L24A
MOV AL, 0FFH
OUT 19H, AL
MOV AL, 0C0H
OUT 19H, AL
MOV CX, 0FFFFH

L45: LOOP L45
MOV AL, 0FFH
OUT 19H, AL 
MOV AL, 00H ;turn off Red LED
OUT 1BH, AL
MOV AL, 01H
OUT 1BH, AL
MOV CX, 0FFFFH ;delay for 1 second

L46: LOOP L46
JMP L ;go back to start
A ENDS
END S
