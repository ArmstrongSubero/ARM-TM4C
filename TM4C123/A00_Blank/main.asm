
 ; File: main.asm
 ; Author: Armstrong Subero
 ; Hardware and uC: TM4C123GH6PM (EK-123GXL Lanunchpad)
 ; Program: 00_Blank
 ; Compiler: TI-CGT-ARM 18.12.3.LTS (CCS v9.2)
 ; Program Version: 1.0
 ;
 ; Program Description: This is a blank program for the TM123GH6PM Launchpad
 ;
 ; Hardware Description: The board uses TIVA C lanuchpad hardware
 ; 
 ; Modified From: Code Examples from Dr. Valvano
 ;
 ; Created October 28th, 2019, 1:23 PM
 ; Last Updated: October 28th, 2019, 1:23 PM

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
SYSCTL_RCGCGPIO_R  .field   0x400FE608,32

      .global main

main: .asmfunc

      ; enter code here
	.endasmfunc

PortF_Init:  .asmfunc

    ; activate clock for Port F
	LDR R1, SYSCTL_RCGCGPIO_R
	LDR R0, [R1]

	; set bit 5 to turn on clock
	ORR R0, R0, #0x20
	STR R0, [R1]

	; allow time for clock to finish
	NOP
	NOP

	; unlock the register
	LDR R1, GPIO_PORTF_LOCK_R

	; unlock GPIO PortF Commit Register
	LDR R0, GPIO_LOCK_KEY
	STR R0, [R1]

	; enable commit for port F
	LDR R1, GPIO_PORTF_CR_R
	; allow access
	MOV R0, #0xFF
	STR R0, [R1]

	; set direction register
	; PF0 and PF7-4 input, PF3-1 output
	MOV R0, #0x0E
	STR R0, [R1]

	; pull-up resistors for PF4, PF0
	LDR R1, GPIO_PORTF_PUR_R
	MOV R0, #0x11
	STR R0, [R1]

	; enable Port F digital port
	LDR R1, GPIO_PORTF_DEN_R

	MOV R0, #0xFF
	STR R0, [R1]
	BX LR
    .endasmfunc

PortF_Input: .asmfunc
    ; pointer to Port F data
 	LDR R1, GPIO_PORTF_DATA_R

 	; read all of Port F
 	LDR R0, [R1]

 	; read the input pins bits 4, 0
 	AND R0, R0, #0x11
 	BX LR
 	.endasmfunc

PortF_Output: .asmfunc
    ; pointer to Port F data
 	LDR R1, GPIO_PORTF_DATA_R

 	; write to PF3-1
 	STR R0, [R1]
 	BX LR
 	.endasmfunc

    .end                             ; end of file
