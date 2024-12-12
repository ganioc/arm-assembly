

ARMCC=arm-none-eabi-gcc
ARMCC_FLAGS =   -march=armv7-a -Wall -mfloat-abi=hard -mfpu=vfpv4  -nostdlib -nostartfiles -fno-common -ffreestanding -fno-builtin -mapcs -std=gnu99

ARMLD=arm-none-eabi-gcc
ARMLD_FLAGS =  -march=armv7-a -Wall -mfloat-abi=hard -mfpu=vfpv4 -nostdlib -nostartfiles --specs=nano.specs  --specs=nosys.specs  -fno-common  -ffreestanding  -fno-builtin  -mapcs -Xlinker -static 

ARMOBJCOPY=arm-none-eabi-objcopy

.PHONY: clean arm welcome arm32.elf arm32.S arm32.bin

welcome:
	@echo "Welcome"

arm32.S:  hello-arm32.S
	@echo "arm32.S"

arm32.bin: arm32.elf 
	$(ARMOBJCOPY) -O binary $< $@

arm32.elf: hello-arm32.o 
	$(ARMCC) $(ARMLD_FLAGS) $< -o $@

hello-arm32.S: hello.c
	$(ARMCC) $(ARMCC_FLAGS) -S $< -o $@

hello-arm32.o: hello.c
	$(ARMCC) $(ARMCC_FLAGS) -c $< -o $@

clean:
	@rm -f *.o *.out *.s
