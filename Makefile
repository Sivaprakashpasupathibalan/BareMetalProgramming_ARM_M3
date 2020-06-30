CC=arm-none-eabi-gcc
MACH=cortex-m3
CFLAGS= -c -mcpu=$(MACH) -mthumb -std=gnu11 -o0
CFLAGS_ASM= -S -mcpu=$(MACH) -mthumb -std=gnu11
LD_FLAGS= -nostdlib -Wl,-Map=final.map -T STM32F103C8_lf.ld
all: STM32F103C8_Startup.o Blink.o final.elf
obj: Blink.o
Asm: Blink.S
clean:
	del *.map *.o *.s *.elf
Blink.S:Blink.c 
	$(CC) $(CFLAGS_ASM) $^ -o $@
Blink.o:Blink.c 
	$(CC) $(CFLAGS) $^ -o $@

STM32F103C8_Startup.o:STM32F103C8_Startup.c 
	$(CC) $(CFLAGS) $^ -o $@

final.elf:STM32F103C8_Startup.o Blink.o
	$(CC) $(LD_FLAGS) $^ -o $@

