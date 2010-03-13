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

unsigned char program=0;
unsigned char delay=10;
unsigned char wait=0;
unsigned char newProgram=0;

unsigned char framebuffer[23];
unsigned char PWM[23];

unsigned char globalI=0;
unsigned char globalJ=0;


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
	TRIS_SW1 = 1;	//Knop1 input green draad green vertragen van de led 
	TRIS_SW2 = 1;	//Knop2 input white draad blue van programma wisselen < achteruit
	TRIS_SW3 = 1;	//Knop3 input yellow draad orange van programma wisselen> vooruituit
	TRIS_SW4 = 1;	//Knop4 input blue draad bruin versnellen van de led 
	
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
			LED0 = (value?0:1);
			break;
		case 1:
			LED1 = (value?0:1);
			break;
		case 2:
			LED2 = (value?0:1);
			break;
		case 3:
			LED3 = (value?0:1);
			break;
		case 4:
			LED4 = (value?0:1);
			break;
		case 5:
			LED5 = (value?0:1);
			break;
		case 6:
			LED6 = (value?0:1);
			break;
		case 7:
			LED7 = (value?0:1);
			break;
		case 8:
			LED8 = (value?0:1);
			break;
		case 9:
			LED9 = (value?0:1);
			break;
		case 10:
			LED10 = (value?0:1);
			break;
		case 11:
			LED11 = (value?0:1);
			break;
		case 12:
			LED12 = (value?0:1);
			break;
		case 13:
			LED13 = (value?0:1);
			break;
		case 14:
			LED14 = (value?0:1);
			break;
		case 15:
			LED15 = (value?0:1);
			break;
		case 16:
			LED16 = (value?0:1);
			break;
		case 17:
			LED17 = (value?0:1);
			break;
		case 18:
			LED18 = (value?0:1);
			break;
		case 19:
			LED19 = (value?0:1);
			break;
		case 20:
			LED20 = (value?0:1);
			break;
		case 21:
			LED21 = (value?0:1);
			break;
		case 22:
			LED22 = (value?0:1);
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

void setLEDFade(char number, char value)
{
	framebuffer[number] = value;
	//if (value) PWM[number] = 6;
}

void setAll (char value)
{
	int i;
	for (i=0; i<23; i++) setLEDFade(i, value);
}


void setColor (color c, char value,char box)
{
	char i,begin,end;
	if(box==0){begin=0; end=22;}
	if(box==1){begin=0; end=10;}
	if(box==2){begin=11; end=22;}
	switch (c)
	{
		case Yellow:
			for(i=1;i<=yellow[0];i++)
			{
				if((yellow[i]>=begin)&&(yellow[i]<=end))setLEDDiscrete(yellow[i],value);
			}
			break;
		case Green: 
			for(i=1;i<=green[0];i++)
			{
				if((green[i]>=begin)&&(green[i]<=end))setLEDDiscrete(green[i],value);
			}
			break;
		case Red: 
			for(i=1;i<=red[0];i++)
			{
				if((red[i]>=begin)&&(red[i]<=end))setLEDDiscrete(red[i],value);
			}
			break;
		case Blue:
			for(i=1;i<=blue[0];i++)
			{
				if((blue[i]>=begin)&&(blue[i]<=end))setLEDDiscrete(blue[i],value);
			}
			break;
		case White: 
			for(i=1;i<=white[0];i++)
			{
				if((white[i]>=begin)&&(white[i]<=end))setLEDDiscrete(white[i],value);
			}
			break;
		case Warmwhite:
			for(i=1;i<=warmwhite[0];i++)
			{
				if((warmwhite[i]>=begin)&&(warmwhite[i]<=end))setLEDDiscrete(warmwhite[i],value);
			}
			break;
		default:
			break;
	}
}

void readInputs()
{
	if (SW1 == 1 || SW2 == 1 || SW3 == 1 || SW4 == 1)
	{
		if (!wait)
		{
			if (SW1 == 1) {
				if (delay < 40) delay++;
			}
					
			if (SW4 == 1) {
				if (delay > 1) delay--;
			}
					
			if (SW2 == 1) {
				if (program <= 0) program = 1;
				else program--;
				setAll(1);
				newProgram = 1;
			}
				
			if (SW3 == 1) {
				program++;
				if (program > 1) program = 0;
				setAll(1);
				newProgram = 1;
			}
			
			wait = 1;
		}
	}
	else
	{
		if (wait)
		{
			if (newProgram) 
			{
				newProgram = 0;
				programInit();
				programRun();
			}
			wait = 0;
		}
	}
}

void programInit()
{
	switch(program)
	{
		default:
			setAll(0);
	}
}

void programRun()
{
	switch(program)
	{
		case 0:
			setLEDFade(globalI, 0);
			globalI++;
			if (globalI >= 23) globalI = 0;
			setLEDFade(globalI, 1);
			break;
		case 1:
			setLEDFade(globalI, 0);
			globalI--;
			if (globalI >= 23) globalI = 22;
			setLEDFade(globalI, 1);
			break;
	}
}

/*
 * Main program
 */
void main() 
{
	unsigned long i=0, j=0, k=0;
	unsigned char pwmpos=0, pwmled=0;
	on_init();
	timer1_init();
	programInit();
	
	while(1)
	{
		if (!wait)
		{
			for(pwmled=0; pwmled<23; pwmled++)
			{
				setLEDDiscrete(pwmled, PWM[pwmled] > pwmpos);
			}
			pwmpos++;
			if (pwmpos >= 6) pwmpos = 0;
			
			if (k>20) {
				for(pwmled=0; pwmled<23; pwmled++)
				{
					if (!framebuffer[pwmled] && PWM[pwmled]) PWM[pwmled]--;
					if (framebuffer[pwmled]  && PWM[pwmled] < 6) PWM[pwmled]++;
				}
				k=0;
			}
			
			if (i > (100*delay))
			{
				programRun();
				i=0;
			}
		}
		
		if (j>10)  {
			readInputs();
			j=0;
		}
		
		i++;
		j++;
		k++;
	}
}