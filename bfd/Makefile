
.PHONY: clean

LD_FLAG=-lbfd 

all: main.out

main.out: readsec.c
	gcc -Wall -g $^ -o $@ -lbfd

clean:
	@rm -f *.o *.out

