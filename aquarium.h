#ifndef AQUARIUM_H
#define AQUARIUM_H


#define SW1 PORTAbits.RA0
#define TRIS_SW1 TRISAbits.TRISA0
#define SW2 PORTAbits.RA1
#define TRIS_SW2 TRISAbits.TRISA1
#define SW3 PORTAbits.RA2
#define TRIS_SW3 TRISAbits.TRISA2
#define SW4 PORTAbits.RA3
#define TRIS_SW4 TRISAbits.TRISA3

#define LED18 LATDbits.LATD6
#define TRIS_LED18 TRISDbits.TRISD6
#define LED0 LATCbits.LATC0
#define TRIS_LED0 TRISCbits.TRISC0
#define LED1 LATCbits.LATC1
#define TRIS_LED1 TRISCbits.TRISC1
#define LED2 LATCbits.LATC2
#define TRIS_LED2 TRISCbits.TRISC2
#define LED3 LATCbits.LATC3
#define TRIS_LED3 TRISCbits.TRISC3
#define LED4 LATCbits.LATC4
#define TRIS_LED4 TRISCbits.TRISC4
#define LED5 LATCbits.LATC5
#define TRIS_LED5 TRISCbits.TRISC5
#define LED6 LATCbits.LATC6
#define TRIS_LED6 TRISCbits.TRISC6

//was led8
#define LED12 LATCbits.LATC7 
#define TRIS_LED12 TRISCbits.TRISC7
#define LED11 LATDbits.LATD0
#define TRIS_LED11 TRISDbits.TRISD0
#define LED13 LATDbits.LATD1
#define TRIS_LED13 TRISDbits.TRISD1
#define LED14 LATDbits.LATD2
#define TRIS_LED14 TRISDbits.TRISD2
#define LED16 LATDbits.LATD3
#define TRIS_LED16 TRISDbits.TRISD3
#define LED15 LATDbits.LATD4
#define TRIS_LED15 TRISDbits.TRISD4
#define LED17 LATDbits.LATD5
#define TRIS_LED17 TRISDbits.TRISD5
#define LED19 LATEbits.LATE0 
#define TRIS_LED19 TRISEbits.TRISE0

#define LED7 LATDbits.LATD7
#define TRIS_LED7 TRISDbits.TRISD7
#define LED8 LATBbits.LATB0
#define TRIS_LED8 TRISBbits.TRISB0
#define LED10 LATBbits.LATB1
#define TRIS_LED10 TRISBbits.TRISB1
#define LED9 LATBbits.LATB2
#define TRIS_LED9 TRISBbits.TRISB2
#define LED22 LATBbits.LATB3
#define TRIS_LED22 TRISBbits.TRISB3
#define LED21 LATBbits.LATB4
#define TRIS_LED21 TRISBbits.TRISB4
#define LED20 LATBbits.LATB5
#define TRIS_LED20 TRISBbits.TRISB5

// number of PWM cycles
#define PWM_LENGTH 22

// timer settings
#define TMR1_PERIOD 1000 
#define CLOCK_FREQ 4
#define TMR1_PRESET (65535-((CLOCK_FREQ/4)*TMR1_PERIOD))
#define TMR1H_PRESET ((TMR1_PRESET & 0xFF00)>>8)
#define TMR1L_PRESET (TMR1_PRESET & 0x00FF)

#if TMR1_PRESET > 65535
#error "TMR1_PRESET te groot"
#endif
#if TMR1_PRESET < 1
#error "TMR1_PRESET te klein"
#endif

const rom char yellow[6]={5,0,4,9,15,18};
const rom char green[5]={4,1,6,13,21};
const rom char red [4]={3,7,14,19};
const rom char blue [5]={4,3,10,12,17};
const rom char white[4]={3,8,11,20};
const rom char warmwhite[5]={4,2,5,16,22};


typedef enum _color {Yellow, Green, Red, Blue, White, Warmwhite}color;
// timer interrupt
void isr();

// timer initialization
void timer1_init(void);

// delay for 'time' miliseconds
void delayMs(unsigned long time);

// delay for 'time' seconds
void delayS(unsigned long time);

// initialization
void on_init();

void setColor(color c, char value, char box);

// set a led, number directly corresponds with LEDxx (only on and off)
void setLEDDiscrete(char number, char value);

// set a led on both boxes, number being between 0 and 11 (inclusive) (only on and off)
// use mirror to reverse the effect on the second box
void setLEDBothDiscrete(char number, char value, char mirror);

void setAll (char value);
void setColor (color c, char value,char box);
void readInputs();
void programInit();
void programRun();

// set a led, number directly corresponds with LEDxx (value between 0 and PWM_LENGTH)
//void setLEDPWM(char number, char value);

// set a led on both boxes, number being between 0 and 11 (inclusive) (value between 0 and PWM_LENGTH)
// use mirror to reverse the effect on the second box
//void setLEDBothPWM(char number, char value, char mirror);

// main function
void main();

#endif