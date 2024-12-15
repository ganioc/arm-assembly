# a cross compile environment for imx6ull

## Into Comp Org Using RPi

```shell
arm-none-eabi-gcc -g -Wall -o intAndFloat.out intAndFloat.c

# run OK.
arm-none-eabi-gcc -g -Wall -march=armv7-a  -mfpu=vfpv4 -mfloat-abi=hard -mapcs --specs=nosys.specs  -std=gnu99 -o intAndFloat.out intAndFloat.c

```

## 如何使用qemu来运行这个程序，并使用gdb来进行调试呢?

```shell
$ qemu-system-arm -cpu cortex-a7 -machine mcimx6ul-evk  -s -S -nographic -kernel ./intAndFloat.out 
$ gdb-multiarch

```

## Used on Raspi 1B+ v1.2
```shell
gcc -g -Wall -o intAndFloat intAndFloat.c

gcc -g -Wall -o echoChar echoChar.c

# gcc -g -Wall -lwiringPi -o led led.c
$ gcc -g -Wall -I/usr/local/include -L/usr/lib/ -o led led.c -lwiringPi


```





