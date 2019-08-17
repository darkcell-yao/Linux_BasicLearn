src = $(wildcard *.c ./src/*.c)
obj = $(patsubst %.c,%.o,$(src))

ALL:test.out

test.out:$(obj)
	gcc $^ -o $@ 

%.o:%.c
	gcc -c $< -o $@ -I./inc

clean:
	-rm test.out $(obj)
