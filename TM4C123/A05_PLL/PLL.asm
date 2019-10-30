
 ; File: PLL.asm
 ; Author: Armstrong Subero
 ; Hardware and uC: TM4C123GH6PM (EK-123GXL Lanunchpad)
 ; Program: A05_PLL
 ; Compiler: TI-CGT-ARM 18.12.3.LTS (CCS v9.2)
 ; Program Version: 1.0
 ;
 ; Program Description: This program contains subroutines for
 ;                       configuring the TM4C123GH6PM PLL
 ;
 ; Hardware Description: The board uses TIVA C lanuchpad hardware
 ;
 ; Created October 29th, 2019, 7:45 PM
 ; Last Updated: October 29th, 2019, 7:45 PM

       .thumb
       .text
       .align  2


; bus frequency is 400 MHz/(SYSDIV2+1) = 400 MHz/(4+1) = 80 MHz
SYSDIV2				   .equ 4

SYSCTL_RIS_R           .field 0x400FE050,32
SYSCTL_RIS_PLLLRIS     .equ   0x00000040  ; PLL Lock Raw Interrupt Status
SYSCTL_RCC_R           .field 0x400FE060,32
SYSCTL_RCC_XTAL_M      .equ   0x000007C0  ; Crystal Value
SYSCTL_RCC_XTAL_6MHZ   .equ   0x000002C0  ; 6 MHz Crystal
SYSCTL_RCC_XTAL_8MHZ   .equ   0x00000380  ; 8 MHz Crystal
SYSCTL_RCC_XTAL_16MHZ  .equ   0x00000540  ; 16 MHz Crystal
SYSCTL_RCC2_R          .field 0x400FE070,32
SYSCTL_RCC2_USERCC2    .equ   0x80000000  ; Use RCC2
SYSCTL_RCC2_DIV400     .equ   0x40000000  ; Divide PLL as 400 MHz vs. 200
                                       ; MHz
SYSCTL_RCC2_SYSDIV2_M  .equ   0x1F800000  ; System Clock Divisor 2
SYSCTL_RCC2_SYSDIV2LSB .equ   0x00400000  ; Additional LSB for SYSDIV2
SYSCTL_RCC2_PWRDN2     .equ   0x00002000  ; Power-Down PLL 2
SYSCTL_RCC2_BYPASS2    .equ   0x00000800  ; PLL Bypass 2
SYSCTL_RCC2_OSCSRC2_M  .equ   0x00000070  ; Oscillator Source 2
SYSCTL_RCC2_OSCSRC2_MO .equ   0x00000000  ; MOSC

      .global PLL_Init

PLL_Init: .asmfunc

	; configure system to use RCC2 for advanced
	; features of 400 MHz PLL and Non integer sys
	; clock divisor
	LDR R3, SYSCTL_RCC2_R
	LDR R2, [R3]
	ORR R2, R2, #SYSCTL_RCC2_USERCC2
	STR R2, [R3]

	; bypass PLL while initializing
	ORR R2, R2, #SYSCTL_RCC2_BYPASS2
	STR R2, [R3]

	; select the crystal value and oscillator source
	LDR R1, SYSCTL_RCC_R
	LDR R0, [R1]
	BIC R0, R0, #SYSCTL_RCC_XTAL_M
	ORR R0, R0, #SYSCTL_RCC_XTAL_16MHZ
	STR R0, [R1]
	BIC R2, R2, #SYSCTL_RCC2_OSCSRC2_M
	ORR R2, R2, #SYSCTL_RCC2_OSCSRC2_MO

	; activate PLL
	BIC R2, R2, #SYSCTL_RCC2_PWRDN2

	; set desired system divider and system divider
	; LSB
	ORR R2, R2, #SYSCTL_RCC2_DIV400
	BIC R2, R2, #SYSCTL_RCC2_SYSDIV2_M
	BIC R2, R2, #SYSCTL_RCC2_SYSDIV2LSB
	ADD R2, R2, #(SYSDIV2<<22)
	STR R2, [R3]


	; wait for PLL to lock by polling PLLLRIS
	LDR R1, SYSCTL_RIS_R

PLL_Init_loop
	LDR  R0, [R1]
	ANDS R0, R0, #SYSCTL_RIS_PLLLRIS
	BEQ  PLL_Init_loop

	; enable use of PLL by clearing bypass
	BIC R2, R2, #SYSCTL_RCC2_BYPASS2
	STR R2, [R3]

	; branch and exchange, transfer control back
	BX LR

	.endasmfunc                      ; end function

    .end                             ; end of file
