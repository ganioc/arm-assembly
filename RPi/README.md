# Readme
## gdbExample

```shell
$ gcc -g -O0 -Wall -o gdbExample.out gdbExample.c

```

## How to use linux objdump?
How to learn the symbol table section?

```shell
objdump -t  # get symbol table
```

## A helloworld example

```shell
gcc -g3 ./hello.c -o hello.out
gcc -g3 -static ./hello.c -o shello.out

#
gcc -g -static -fno-PIC -m32 global.c

# cause a coredupm here
gcc -g readonly.c -o readonly.out

# create split dwarf
gcc -g -gsplit-dwarf hello.c -o gshello.out

```
## Learn .plt, .got

```shell
gcc -g3 -Wall ./testplt.c -o testplt.out

```

