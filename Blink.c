#define  APB2ENR      (*((volatile unsigned long *)0x40021018U))      //ClockGating Control Register
#define  GPIOPCCRH    (*((volatile unsigned long *)0x40011004U))      //Port Config Register High
#define  GPIOPCCRL    (*((volatile unsigned long *)0x40011000U))      //Port Config Register Low
#define  GPIOPCODR    (*((volatile unsigned long *)0x4001100CU))      //Port output Register
#define  GPIOPCBSSR   (*((volatile unsigned long *)0x40011010U))      //Port bit set/reset register
#define  GPIOPCBSR    (*((volatile unsigned long *)0x40011014U))      //Port bit reset register

const int hello = 40;
int var = 10;
int main()
{
  APB2ENR |=  (1 << 4);      //Enable clock for C port
  GPIOPCCRH |= (1 << 20);    //setting the register with modes
  GPIOPCCRH |= (0 << 21);
  GPIOPCCRH |= (0 << 23);
  GPIOPCCRH |= (0 << 22);
  GPIOPCODR |= (0 << 13);   //set output to low
  while(1)
  {
    GPIOPCODR ^= (0 << 13);   //set output to low
    for(int i = 0; i < 100000; i++);
    GPIOPCODR ^= (1 << 13);   //set output to High
    for(int i = 0; i < 100000; i++);
  }  
}

