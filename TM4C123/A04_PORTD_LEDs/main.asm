
 ; File: main.asm
 ; Author: Armstrong Subero
 ; Hardware and uC: TM4C123GH6PM (EK-123GXL Lanunchpad)
 ; Program: A04_PORTD_LEDs
 ; Compiler: TI-CGT-ARM 18.12.3.LTS (CCS v9.2)
 ; Program Version: 1.0
 ;
 ; Program Description: This program toggles LEDs on PORT D in changing
 ;                      patterns
 ;
 ; Hardware Description: The board uses TIVA C lanuchpad hardware
 ;
 ; Created October 29th, 2019, 7:10 PM
 ; Last Updated: October 29th, 2019, 7:10 PM

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

GPIO_PORTD_DATA_R  .field  0x400073FC,32
GPIO_PORTD_DIR_R   .field  0x40007400,32
GPIO_PORTD_AFSEL_R .field  0x40007420,32
GPIO_PORTD_DR8R_R  .field  0x40007508,32
GPIO_PORTD_DEN_R   .field  0x4000751C,32
GPIO_PORTD_AMSEL_R .field  0x40007528,32
GPIO_PORTD_PCTL_R  .field  0x4000752C,32
SYSCTL_RCGC2_GPIOD .equ 0x00000008   ; port D Clock Gating Control

LEDS      .field  0x4000703C,32   ; access PD3-PD0
RED       .equ 0x02
BLUE      .equ 0x04
GREEN     .equ 0x08
SW1       .equ 0x10                 ; on the left side of the Launchpad board
SW2       .equ 0x01                 ; on the right side of the Launchpad board
PA5       .equ 0x40004080           ; PA5 on APB



SYSCTL_RCGCGPIO_R  .field   0x400FE608,32

      .global main

GPIO_Init: .asmfunc

	; init Port D clock
	LDR R1, SYSCTL_RCGCGPIO_R
	LDR R0, [R1]

	; set bit 3 to turn on clock
	ORR R0, R0, #0x00000008
	STR R0, [R1]

	; time to finish
	NOP
	NOP

	; no need to unlock PD0-3
	LDR R1, GPIO_PORTD_DIR_R
	LDR R0, [R1]

	; set PD 0-3 as output
	ORR R0, R0, #0x0F
	STR R0, [R1]

	; make digital port
	LDR R1, GPIO_PORTD_DEN_R
	LDR R0, [R1]

	; enable digital I/O on PD 0-3
	ORR R0, R0, #0x0F
	STR R0, [R1]

	; branch and exchange, transfer control back
	BX LR
	.endasmfunc

main: .asmfunc
	BL GPIO_Init

	LDR R0, LEDS   ; R0 LEDS
	MOV R1, #10    ; R1 1010
	MOV R2, #9     ; R2 1001
	MOV R3, #5     ; R3 0101
	MOV R4, #6     ; R4 0110

loop
    ; LEDs is 1010
	STR R1, [R0]

	; LEDs is 1001
	STR R2, [R0]

	; LEDs is 1010
	STR R3, [R0]

	; LEDs is 0110
	STR R4, [R0]

	; loop program
	B	loop

	.endasmfunc                      ; end function

    .end                             ; end of file
