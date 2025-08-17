;****************************************************************
;circular buffering

      .ARMS_off                     ;enable assembler for ARMS=0
      .CPL_on                      	;enable assembler for CPL=1
      .mmregs                       ;enable mem mapped register names

	.global _circbuff				; Circular Buffer Function Name
	.global _clearbuff
	.global _inPtr					; Pointer Contianing the Address of Input
	.global _outPtr					; Pointer Contianing the Address of Output
	.global _coeff					; Pointer Contianing the First Address of Coefficient Array;

; This is a skeleton project for initializing circular buffer

	.data							;data section
									;section where all the data is stored 

FIR_len	.set 12					;length of the impulse response ex: 4 length filter

	.align 16			
firbuff	.space 16*FIR_len			; allocating buffer space 
									; Each Coefficient of impulse response
									; is represented in 16 Bits
									; 16 times the Filter Length
									

oldindex	.word  0				; Allocate storage to save oldindex 
									; (defines where next sample has to be put in buffer)
									

	.text							;this section contains the code 


_clearbuff	
	mov #(firbuff+FIR_len-1),AR4		; AR4 points to last location of buffer space
	MOV #0,*(#oldindex)
	RPT #(FIR_len-1)					; Repeat the next instruction for (FIR_len -1) times
	MOV #0,*AR4-;						: Moving the value 0 to the buffer
	
	RET


_circbuff							; Circular Buffering function definition

; section 1: loading address
;ex:-	
	MOV		dbl(*(#_inPtr)), XAR6		; XAR6 contains address to input;
    MOV		dbl(*(#_coeff)), XAR5		; XAR5 contains address to First Address of Coefficient Array;
    MOV		dbl(*(#_outPtr)), XAR7		; XAR7 contains address to Output;


; Next part of the code assumes that AR1 is set as the circulating pointer over firbuff

 	MOV *(#oldindex),AR1				; Initialing the AR1 to Oldindex i.e, Zero
 
; once set store the index of oldest state in this register

	MOV *AR6, *AR1+;				; Receive input and store it in the location pointed by *AR1
	 							; i.e, location BSA01 + AR1
    MOV AR1,*(#oldindex)        ; Saving the oldindex from AR1
	
;*********************************************
;***** Your convolution code goes here *******

 	MOV #0, AC0
 	MOV *AR1, *AR1-
 	RPT #FIR_len-1
 	MAC *AR5+, *AR1-, AC0
 	
 	MOV AC0, *AR7
 	 
;*********************************************
    RET
