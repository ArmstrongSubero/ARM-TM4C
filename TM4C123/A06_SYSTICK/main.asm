; File: main.asm
 ; Author: Armstrong Subero
 ; Hardware and uC: TM4C123GH6PM (EK-123GXL Lanunchpad)
 ; Program: A05_PLL
 ; Compiler: TI-CGT-ARM 18.12.3.LTS (CCS v9.2)
 ; Program Version: 1.0
 ;
 ; Program Description: This program allows PLL to 80 MHz on TM123GH6PM Launchpad
 ;                      and demonstrates it is working by flashing an LED at
 ;                      a rate of 1 Hz
 ;
 ; Hardware Description: The board uses TIVA C lanuchpad hardware
 ;
 ; Created October 29th, 2019, 7:55 PM
 ; Last Updated: October 29th, 2019, 7:55 PM

       .thumb
       .text
       .align  2

GPIO_PORTF2        .field 0x40025010,32
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
SYSCTL_RCGCGPIO_R  .field 0x400FE608,32
ONEHZDELAY         .field 13333333,32    ; delay ~0.5 sec at 80 MHz

      .global main
      .global PLL_Init
      .global SysTick_Init
      .global SysTick_Wait
      .global SysTick_Wait10ms


;------------Delay------------
; delay function for testing from sysctl.c
; which delays 3*R0 cycles
; Input: R0  number of cycles to wait divided by 3
; Output: none

Delay: .asmfunc
	SUBS R0, #1
	BNE  Delay
	BX	 LR
	.endasmfunc               ; end of function


;------------Main------------
; Program entry point
; Input: none
; Output: none
main: .asmfunc

    ; init PLL @ 80 MHz
    BL PLL_Init

	; init SysTick
	BL SysTick_Init

     ; activate clock for Port F
    LDR R1, SYSCTL_RCGCGPIO_R       ; R1 = &SYSCTL_RCGCGPIO_R
    LDR R0, [R1]                    ; R0 = [R1]
    ORR R0, R0, #0x20               ; Port F
    STR R0, [R1]                    ; [R1] = R0
    NOP
    NOP                             ; allow time to finish activating
    ; set direction register
    LDR R1, GPIO_PORTF_DIR_R        ; R1 = &GPIO_PORTF_DIR_R
    LDR R0, [R1]                    ; R0 = [R1]
    ORR R0, R0, #0x04               ; R0 = R0|0x04 (make PF2 output; PF2 built-in blue LED)
    STR R0, [R1]                    ; [R1] = R0
    ; regular port function
    LDR R1, GPIO_PORTF_AFSEL_R      ; R1 = &GPIO_PORTF_AFSEL_R
    LDR R0, [R1]                    ; R0 = [R1]
    BIC R0, R0, #0x04               ; R0 = R0&~0x04 (disable alt funct on PF2)
    STR R0, [R1]                    ; [R1] = R0
    ; enable digital port
    LDR R1, GPIO_PORTF_DEN_R        ; R1 = &GPIO_PORTF_DEN_R
    LDR R0, [R1]                    ; R0 = [R1]
    ORR R0, R0, #0x04               ; R0 = R0|0x04 (enable digital I/O on PF2)
    STR R0, [R1]                    ; [R1] = R0
    ; configure as GPIO
    LDR R1, GPIO_PORTF_PCTL_R       ; R1 = &GPIO_PORTF_PCTL_R
    LDR R0, [R1]                    ; R0 = [R1]
    BIC R0, R0, #0x00000F00         ; R0 = R0&~0x00000F00 (clear port control field for PF2)
    ADD R0, R0, #0x00000000         ; R0 = R0+0x00000000 (configure PF2 as GPIO)
    STR R0, [R1]                    ; [R1] = R0
    ; disable analog functionality
    LDR R1, GPIO_PORTF_AMSEL_R      ; R1 = &GPIO_PORTF_AMSEL_R
    MOV R0, #0                      ; R0 = 0 (disable analog functionality on PF)
    STR R0, [R1]                    ; [R1] = R0

	LDR R4, GPIO_PORTF2             ; R4 = &GPIO_PORTF2
    LDR R5, [R4]                    ; R5 = [R4]

loop
    ; toggle PF2
    EOR R5, R5, #0x04
    STR R5, [R4]

    ; delay 10 ms
	MOV R0, #1
	BL SysTick_Wait10ms

	; keep looping
	B loop

	.endasmfunc                     ; end of function

;------------PortF_Init------------
; Initializes PORTF
; Input: none
; Output: none
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
    .endasmfunc                      ; end of function

;------------PortF_Input------------
; Read an I/O pin on PORTF
; Input: none
; Output: none
PortF_Input: .asmfunc
    ; pointer to Port F data
 	LDR R1, GPIO_PORTF_DATA_R

 	; read all of Port F
 	LDR R0, [R1]

 	; read the input pins bits 4, 0
 	AND R0, R0, #0x11
 	BX LR
 	.endasmfunc                        ; end of function

;------------PortF_Output------------
; Write an I/O pin on PORTF
; Input: none
; Output: none
PortF_Output: .asmfunc
    ; pointer to Port F data
 	LDR R1, GPIO_PORTF_DATA_R

 	; write to PF3-1
 	STR R0, [R1]
 	BX LR
 	.endasmfunc           ; end of function

    .end                  ; end of file
