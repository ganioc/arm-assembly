*Please help me to write this README file. It will include some compile commands.*

```shell
# generate libbar.o
gcc -fPIC -O -c libbar.c
# generate so lib file
gcc -shared -o libbar.so libbar.o
# generate exec baz
gcc -O -c baz.c
# link with the .so lib file
gcc -o baz baz.o -L. -lbar

```


