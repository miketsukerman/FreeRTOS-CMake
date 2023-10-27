#include "uart.h"

#include <cstdio>
#include <string>

static void prvUARTInit( void )
{
	UART0_BAUDDIV = 16;
	UART0_CTRL = 1;
}

int main(void) 
{
	/* Hardware initialisation.  printf() output uses the UART for IO. */
	prvUARTInit();

	printf( "\r\n\r\nHello, world!\r\n" );

    return (1); 
}

