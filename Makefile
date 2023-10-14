all: th_alloc.so test test1

CFLAGS=-Wall -Werror -g

th_alloc.so: th_alloc.c
	gcc $(CFLAGS) -fPIC -shared th_alloc.c -o th_alloc.so

test: test.c
	gcc $(CFLAGS) test.c -o test

test1: test1.c
	gcc $(CFLAGS) test1.c -o test1

update:
	git checkout main
	git pull https://github.com/comp530-f23/malloc.git main

clean:
	rm -f test test1 th_alloc.so
