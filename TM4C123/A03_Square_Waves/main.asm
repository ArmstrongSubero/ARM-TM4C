
 ; File: main.asm
 ; Author: Armstrong Subero
 ; Hardware and uC: TM4C123GH6PM (EK-123GXL Lanunchpad)
 ; Program: A03_Square_Waves
 ; Compiler: TI-CGT-ARM 18.12.3.LTS (CCS v9.2)
 ; Program Version: 1.0
 ;
 ; Program Description: This program generates two out of phase square
 ;                      waves on PF1 and PF2
 ;
 ; Hardware Description: The board uses TIVA C lanuchpad hardware
 ;
 ; Created October 29th, 2019, 6:45 PM
 ; Last Updated: October 29th, 2019, 6:45 PM

       .thumb
       .text
       .align  2
GPIO_PORTF_DATA_R  .field 0x400253FC,32
GPIO_PORTF_DIR_R   .field 0x40025400,32
GPIO_PORTF_AFSEL_R .field 0x40025420,32
GPIO_PORTF_PUR_R   .field 0x40025510,32
GPIO_PORTF_DEN_R   .field 0x4002551C,32
GPIO_PORTF_LOCK_R  .field 0x40025520,32
GPIO_PORTF_CR_R    .field 0x40025524,32
GPIO_PORTF_AMSEL_R .field 0x40025528,32
GPIO_PORTF_PCTL_R  .field 0x4002552C,32
GPIO_LOCK_KEY      .field 0x4C4F434B,32  ; Unlocks the GPIO_CR register
RED       .equ 0x02
BLUE      .equ 0x04
GREEN     .equ 0x08
SW1       .equ 0x10                 ; on the left side of the Launchpad board
SW2       .equ 0x01                 ; on the right side of the Launchpad board
PA5       .equ 0x40004080           ; PA5 on APB



SYSCTL_RCGCGPIO_R  .field   0x400FE608,32

      .global main

main: .asmfunc

	; init Port F clock
	LDR R1, SYSCTL_RCGCGPIO_R
	LDR R0, [R1]

	; set bit 5 to turn on clock
	ORR R0, R0, #0x20
	STR R0, [R1]

	; time to finish
	NOP
	NOP

	; no need to unlock PF1, PF2
	LDR R1, GPIO_PORTF_DIR_R

	; set direction
	LDR R0, [R1]

	; PF1 and PF2 are output
	ORR R0, #0x06;

    ; enable PORTF digital port
	STR R0, [R1]
	LDR R1, GPIO_PORTF_DEN_R

	; enable Port F digital I/O
	LDR R0, [R1]
	ORR R0, #0x06

	STR R0, [R1]
	LDR R1, GPIO_PORTF_DATA_R

	; PF2 = 0, PF1 = 1
	MOV R0, #0x02

loop
    ; write PF1 and PF2
    STR R0, [R1]

    ; toggle PF1 and PF2
    EOR R0, R0, #0x06

	; loop program
	B	loop

	.endasmfunc                      ; end function

    .end                             ; end of file
