/* File: main.c
 * Author: Armstrong Subero
 * Hardware and uC: TM4C123GH6PM (EK-123GXL Lanunchpad)
 * Program: C00_Blank
 * Compiler: TI-CGT-ARM 18.12.3.LTS (CCS v9.2)
 * Program Version: 1.0
 *
 * Program Description: This is a blank program for the TM123GH6PM
 *                      Launchpad
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

    // loop forever
    while(1)
    {

    }
}


