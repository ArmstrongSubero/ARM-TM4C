
 ; File: main.asm
 ; Author: Armstrong Subero
 ; Hardware and uC: TM4C123GH6PM (EK-123GXL Lanunchpad)
 ; Program: A01_Output
 ; Compiler: TI-CGT-ARM 18.12.3.LTS (CCS v9.2)
 ; Program Version: 1.0
 ;
 ; Program Description: This program turns on an LED on the TM123GH6PM Launchpad
 ;
 ; Hardware Description: The board uses TIVA C lanuchpad hardware
 ;
 ; Modified From: Code Examples from Dr. Valvano
 ;
 ; Created October 28th, 2019, 2:12 PM
 ; Last Updated: October 28th, 2019, 2:12 PM

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

	; init Port F
	BL PortF_Init

	; turn Red LED On
	MOV R0, #RED
	BL PortF_Output

	.endasmfunc

PortF_Init:  .asmfunc
 	LDR R1, SYSCTL_RCGCGPIO_R       ; 1) activate clock for Port F
    LDR R0, [R1]
    ORR R0, R0, #0x20               ; set bit 5 to turn on clock
    STR R0, [R1]
    NOP
    NOP                             ; allow time for clock to finish
    LDR R1, GPIO_PORTF_LOCK_R       ; 2) unlock the lock register
    LDR R0, GPIO_LOCK_KEY             ; unlock GPIO Port F Commit Register
    STR R0, [R1]
    LDR R1, GPIO_PORTF_CR_R         ; enable commit for Port F
    MOV R0, #0xFF                   ; 1 means allow access
    STR R0, [R1]
    LDR R1, GPIO_PORTF_AMSEL_R      ; 3) disable analog functionality
    MOV R0, #0                      ; 0 means analog is off
    STR R0, [R1]
    LDR R1, GPIO_PORTF_PCTL_R       ; 4) configure as GPIO
    MOV R0, #0x00000000             ; 0 means configure Port F as GPIO
    STR R0, [R1]
    LDR R1, GPIO_PORTF_DIR_R        ; 5) set direction register
    MOV R0,#0x0E                    ; PF0 and PF7-4 input, PF3-1 output
    STR R0, [R1]
    LDR R1, GPIO_PORTF_AFSEL_R      ; 6) regular port function
    MOV R0, #0                      ; 0 means disable alternate function
    STR R0, [R1]
    LDR R1, GPIO_PORTF_PUR_R        ; pull-up resistors for PF4,PF0
    MOV R0, #0x11                   ; enable weak pull-up on PF0 and PF4
    STR R0, [R1]
    LDR R1, GPIO_PORTF_DEN_R        ; 7) enable Port F digital port
    MOV R0, #0xFF                   ; 1 means enable digital I/O
    STR R0, [R1]
    BX  LR
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
