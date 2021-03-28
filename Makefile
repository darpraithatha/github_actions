CC = gcc
CFLAGS = -I.
DEPS = print_hello.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

helloworld: main.o print_hello.o
	$(CC) -o helloworld main.o print_hello.o
