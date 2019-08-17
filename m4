src = $(wildcard *.c ./src/*.c)
obj = $(patsubst %.c,%.o,$(src))
myArgs = $(-Wall -g)


ALL:test.out

test.out:$(obj)
	gcc $^ -o $@ $(myArgs) 

$(obj):%.o:%.c
	gcc -c $< -o $@ -I./inc $(myArgs)

clean:
	-rm test.out $(obj)

.PHONY:clean ALL
