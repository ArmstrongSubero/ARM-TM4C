/* File: main.c
 * Author: Armstrong Subero
 * Hardware and uC: TM4C123GH6PM (EK-123GXL Lanunchpad)
 * Program: C00_Blank
 * Compiler: TI-CGT-ARM 18.12.3.LTS (CCS v9.2)
 * Program Version: 1.0
 *
 * Program Description: Configures an I/O pin as output
 *                      and uses it to drive an LED
 *
 * Hardware Description: The board uses TIVA C Launchpad hardware
 *
 * Created October 28th, 2019, 1:23 PM
 * Last Updated: October 28th, 2019, 1:23 PM
 */


//////////////////////////////
// Includes and Defines
/////////////////////////////

#include <stdint.h>
#include <stdbool.h>
#include "inc/hw_memmap.h"
#include "driverlib/debug.h"
#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"
#include "tm4c123gh6pm.h"


//////////////////////////////
// Function Prototypes
/////////////////////////////
void PortF_Init(void);
uint32_t PortF_Input(void);
void PortF_Output(uint32_t data);


//////////////////////////////
// Routine if error is
// encountered in software
// library
/////////////////////////////
#ifdef DEBUG
void
__error__(char *pcFilename, uint32_t ui32Line)
{
    while(1);
}
#endif


//////////////////////////////
// int main (void)
//
// Main program entry point
/////////////////////////////
int main(void)
{

    // initialize PortF
    PortF_Init();


    // loop forever
    while(1)
    {
      // Make PF1 high
      GPIO_PORTF_DATA_R |= 0x02;

      // Make PF1 low
      //GPIO_PORTF_DATA_R &= ~0x02;
    }
}


//////////////////////////////
// void PortF_Init (void)
//
// Initialize PortF
/////////////////////////////

void PortF_Init(void)
{
    // Activate clock for PortF
    SYSCTL_RCGCGPIO_R |= 0x00000020;

    // Ready?
    while((SYSCTL_PRGPIO_R & 0x00000020) == 0){};

    // unlock GPIO PortF
    GPIO_PORTF_LOCK_R = 0x4C4F434B;

    // allow changes to PF4-0
    GPIO_PORTF_CR_R = 0x1F;

    // PF4, PF0 in, PF3-1 out
    GPIO_PORTF_DIR_R = 0x0E;

    // enable pull-up on PF0 and PF4
    GPIO_PORTF_PUR_R = 0x11;

    // enable digital I/O on PF4-0
    GPIO_PORTF_DEN_R = 0x1F;
}



//////////////////////////////
// uint32_t PortF_Input(void)
//
// Read specified PortF
// inputs
/////////////////////////////
uint32_t PortF_Input(void)
{
    // read PF4, PF0, inputs
    return (GPIO_PORTF_DATA_R&0x11);
}


//////////////////////////////
// uint32_t
//   PortF_Output (uint32_t data)
//
// Output data to PortF
/////////////////////////////
void PortF_Output(uint32_t data)
{
    GPIO_PORTF_DATA_R = data;
}




