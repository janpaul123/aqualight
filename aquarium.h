#ifndef AQUARIUM_H
#define AQUARIUM_H


#define SW1 RA0
#define TRIS_SW1 TRISA0
#define SW2 RA1
#define TRIS_SW2 TRISA1
#define SW3 RA2
#define TRIS_SW3 TRISA2
#define SW4 RA3
#define TRIS_SW4 TRISA3

#define LED0 RE0
#define TRIS_LED0 TRISE0
#define LED1 RC0
#define TRIS_LED1 TRISC0
#define LED2 RC1
#define TRIS_LED2 TRISC1
#define LED3 RC2
#define TRIS_LED3 TRISC2
#define LED4 RC3
#define TRIS_LED4 TRISC3
#define LED5 RC4
#define TRIS_LED5 TRISC4
#define LED6 RC5
#define TRIS_LED6 TRISC5
#define LED7 RC6
#define TRIS_LED7 TRISC6

#define LED8 RC7
#define TRIS_LED8 TRISC7
#define LED9 RD0
#define TRIS_LED9 TRISD0
#define LED10 RD1
#define TRIS_LED10 TRISD1
#define LED11 RD2
#define TRIS_LED11 TRISD2
#define LED12 RD3
#define TRIS_LED12 TRISD3
#define LED13 RD4
#define TRIS_LED13 TRISD4
#define LED14 RD5
#define TRIS_LED14 TRISD5
#define LED15 RD6
#define TRIS_LED15 TRISD6

#define LED16 RD7
#define TRIS_LED16 TRISD7
#define LED17 RB0
#define TRIS_LED17 TRISB0
#define LED18 RB1
#define TRIS_LED18 TRISB1
#define LED19 RB2
#define TRIS_LED19 TRISB2
#define LED20 RB3
#define TRIS_LED20 TRISB3
#define LED21 RB4
#define TRIS_LED21 TRISB4
#define LED22 RB5
#define TRIS_LED22 TRISB5

// number of PWM cycles
#define PWM_LENGTH 32

// timer settings
#define TMR1_PERIOD 1000 
#define CLOCK_FREQ 4
#define TMR1_PRESET (65535-((CLOCK_FREQ/4)*TMR1_PERIOD))
#define TMR1H_PRESET ((TMR1_PRESET & 0xFF00)>>8)
#define TMR1L_PRESET (TMR1_PRESET & 0x00FF)

// ticks for timer functions
unsigned long tick=0;
unsigned long lasttick=0;

// current PWM cycle we are in
char PWMCycle;

// PWM values
char PWM[23];

// timer interrupt
void isr() interrupt 0;

// timer initialization
void timer1_init(void);

// delay for 'time' miliseconds
void delayMs(unsigned long time);

// delay for 'time' seconds
void delayS(unsigned long time);

// initialization
void on_init();

// set a led, number directly corresponds with LEDxx (only on and off)
void setLEDDiscrete(char number, char value);

// set a led on both boxes, number being between 0 and 11 (inclusive) (only on and off)
// use mirror to reverse the effect on the second box
void setLEDBothDiscrete(char number, char value, char mirror);

// set a led, number directly corresponds with LEDxx (value between 0 and PWM_LENGTH)
void setLEDPWM(char number, char value);

// set a led on both boxes, number being between 0 and 11 (inclusive) (value between 0 and PWM_LENGTH)
// use mirror to reverse the effect on the second box
void setLEDBothPWM(char number, char value, char mirror);

// main function
void main();

#endif