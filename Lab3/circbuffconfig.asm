;****************************************************************
;circular buffering

      .ARMS_off                     ;enable assembler for ARMS=0
      .CPL_on                      	;enable assembler for CPL=1
      .mmregs                       ;enable mem mapped register names

	.global _circbuffconfig		; Circular Buffer Function Name

; This is a skeleton project for initializing circular buffer

	.data							;data section
									;section where all the data is stored 

buff_length	.set 5  					;length of the impulse response ex: length 5 filter

	.align 16			
firbuff	.space 16*buff_length		; allocating buffer space
									; Each Coefficient of impulse response
									; is represented in 16 Bits
									; 16 times the Filter Length
									
	.text							;this section contains the code 

_circbuffconfig					; Circular Buffering function definition



;*************************************************************
;***** Your circular buffer configuration code goes here *****
;*************************************************************
	
	;Configuration of Input Buffer
	;Configure AR1 as the pointer to the input buffer
	MOV #3, BK03						
	BSET AR1LC
	AMOV #00000h, XAR1
	MOV #1950h, BSA01
	MOV #0000h, AR1
	
									

	;Configuration of Output Buffer
	;Configure AR4 as the pointer to the output buffer
	;Refer circular_addressing.pdf for this section
	MOV #2, BK47						
	BSET AR4LC
	AMOV #00000h, XAR4
	MOV #1960h, BSA45
	MOV #0000h, AR4	
	
	
    RET
