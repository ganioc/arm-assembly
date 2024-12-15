# Try to write a makefile for i.mx6ULL

CROSS_COMPILE=arm-none-eabi-

CC:=$(CROSS_COMPILE)gcc
LD:=$(CROSS_COMPILE)gcc 

OBJS:=

LDSCRIPT=target.ld 

OBJCOPY:=$(CROSS_COMPILE)objcopy 

CFLAGS:= -g -march=armv7-a -Wall -mfpu=vfpv4 -mfloat-abi=hard -mapcs -std=gnu99 --specs=nosys.specs 

LDFLAGS:= -T ./target.ld

all=intAndFloat.out

intAndFloat.out: intAndFloat.o 
	$(CC)  -o $@ $< 

intAndFloat.o: intAndFloat.c 
	$(CC) $(CFLAGS)   -o $@ $<


clean:
	rm -f *.bin *.out *.elf *.o

