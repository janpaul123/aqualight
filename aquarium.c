//#include <p18f452.h>
#include <p18cxxx.h>
#include "aquarium.h"

/*
 * Configuration bits
 */
typedef unsigned int word;

/*word at 0x2007 CONFIG = _RC_OSC & _WDT_OFF & _PWRTE_OFF & _BODEN_ON & _LVP_OFF & _CPD_OFF & _WRT_OFF & _DEBUG_OFF & _CP_OFF;
*/

//#pragma config PLLDIV = 2, CPUDIV = OSC1_PLL2, USBDIV = 2, FOSC = HSPLL_HS //CPU=48 MHz
#pragma config PWRT = ON
#pragma config BOR = OFF
//#pragma config VREGEN = ON 	// USB Voltage Regulator Enable: ein
#pragma config WDT = OFF 	// Watchdog Timer: aus
//#pragma config MCLRE = ON // MCLR Enable:
//#pragma config MCLRE = OFF 	// MCLR Disabled    RE3 enabled
//#pragma config PBADEN = OFF // PORTB<4:0> pins are configured as digital I/O on Reset
#pragma config LVP = OFF 	// Low Voltage ICSP: aus
//#pragma config CPB = OFF	//ON	// boot block code protection: on
//#pragma config WRTB = OFF	//ON// boot block write protection: on
//#pragma config CCP2MX = OFF
//#pragma config STVREN = OFF

// ticks for timer functions
unsigned long tick=0;
unsigned long lasttick=0;


#pragma code high_vector=0x08
void interrupt_at_high_vector(void)
{
	_asm goto isr _endasm
}
#pragma code

#pragma code low_vector=0x18
void interrupt_at_low_vector(void)
{
	_asm goto isr _endasm
}
#pragma code

/*
 * Timer functions
 */

void isr()
{
	unsigned char i;
	if(PIR1&0x01)
	{
		tick++;
		TMR1H=TMR1H_PRESET;
		TMR1L=TMR1L_PRESET;
		
		PIR1&=0xFE;  //clear timer1 interrupt flag
	}
}

void timer1_init(void)
{
	T1CON=0x01;
	INTCON|=0xC0; //enable global interrupts
	PIE1|=0x01;  //enable timer1 interrupt
	PIR1&=0xFE;  //clear timer1 interrupt flag
}

void delayMs(unsigned long time)
{
	lasttick=tick;
	while((tick-lasttick)<time)continue;
}

void delayS(unsigned long time)
{
	unsigned int i=0;
	for(i=0; i<1000; i++)
		delayMs(time);
}

/*
 * LED functions
 */
void on_init()
{
	ADCON1=6;		//AD converter uit
	CCP2CON=0;
	TRIS_SW1 = 1;	//Knop1 input
	TRIS_SW2 = 1;	//Knop2 input
	TRIS_SW3 = 1;	//Knop3 input
	TRIS_SW4 = 1;	//Knop4 input
	
	TRIS_LED0 = 0; //Led0 output
	TRIS_LED1 = 0; //Led1 output
	TRIS_LED2 = 0; //Led2 output
	TRIS_LED3 = 0; //Led3 output
	TRIS_LED4 = 0; //Led4 output
	TRIS_LED5 = 0; //Led5 output
	TRIS_LED6 = 0; //Led6 output
	TRIS_LED7 = 0; //Led7 output
	TRIS_LED8 = 0; //Led8 output
	TRIS_LED9 = 0; //Led9 output
	TRIS_LED10 = 0; //Led10 output
	TRIS_LED11 = 0; //Led11 output
	TRIS_LED12 = 0; //Led12 output
	TRIS_LED13 = 0; //Led13 output
	TRIS_LED14 = 0; //Led14 output
	TRIS_LED15 = 0; //Led15 output
	TRIS_LED16 = 0; //Led16 output
	TRIS_LED17 = 0; //Led17 output
	TRIS_LED18 = 0; //Led18 output
	TRIS_LED19 = 0; //Led19 output
	TRIS_LED20 = 0; //Led20 output
	TRIS_LED21 = 0; //Led21 output
	TRIS_LED22 = 0; //Led22 output
}

void setLEDDiscrete(char number, char value)
{
	switch(number)
	{
		case 0:
			LED0 = (value?1:0);
			break;
		case 1:
			LED1 = (value?1:0);
			break;
		case 2:
			LED2 = (value?1:0);
			break;
		case 3:
			LED3 = (value?1:0);
			break;
		case 4:
			LED4 = (value?1:0);
			break;
		case 5:
			LED5 = (value?1:0);
			break;
		case 6:
			LED6 = (value?1:0);
			break;
		case 7:
			LED7 = (value?1:0);
			break;
		case 8:
			LED8 = (value?1:0);
			break;
		case 9:
			LED9 = (value?1:0);
			break;
		case 10:
			LED10 = (value?1:0);
			break;
		case 11:
			LED11 = (value?1:0);
			break;
		case 12:
			LED12 = (value?1:0);
			break;
		case 13:
			LED13 = (value?1:0);
			break;
		case 14:
			LED14 = (value?1:0);
			break;
		case 15:
			LED15 = (value?1:0);
			break;
		case 16:
			LED16 = (value?1:0);
			break;
		case 17:
			LED17 = (value?1:0);
			break;
		case 18:
			LED18 = (value?1:0);
			break;
		case 19:
			LED19 = (value?1:0);
			break;
		case 20:
			LED20 = (value?1:0);
			break;
		case 21:
			LED21 = (value?1:0);
			break;
		case 22:
			LED22 = (value?1:0);
			break;
		default:
			break;	
	}
}

void setLEDBothDiscrete(char number, char value, char mirror)
{
	if (number < 11)
		setLEDDiscrete(number, value);
	
	if (mirror)
		number = 22-number;
	else
		number += 11;
	setLEDDiscrete(number, value);
}
/*
void setLEDPWM(char number, char value)
{
	PWM[number] = value;
}*/
/*
void setLEDBothPWM(char number, char value, char mirror)
{
	if (number < 11)
		setLEDPWM(number, value);
	
	if (mirror)
		number = 22-number;
	else
		number += 11;
	setLEDPWM(number, value);
}*/


/*
 * Main program
 */
void main() 
{
	char i=0;
	unsigned int j=0;
	unsigned char PWMCycle=0;
	unsigned char PWM[23];
	
	on_init();
	timer1_init();
	for(i=0;i<23;i++)
		PWM[i] = i;//setLEDPWM(i,i);
	
	while(1)
	{

	/*	PWMCycle++;
		if (PWMCycle >= PWM_LENGTH) 
			PWMCycle = 0;
		
		for(i=0;i<=22;i++)
		{
			if(PWMCycle == PWM[i])
				setLEDDiscrete(i, 0);
			if(PWMCycle == 0)
				setLEDDiscrete(i, 1);
		}
	*/	
		//delayMs(10);
		setLEDBothDiscrete(i,0,0);
		if(i>0)setLEDBothDiscrete(i-1,1,0);
		else setLEDBothDiscrete(11,1,0);
		i++;
		if(i>11)i=0;
		//delayMs(100);	
		for(j=0;j<50000;j++)continue;

	}

}