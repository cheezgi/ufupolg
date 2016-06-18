CC = gcc
CFLAGS = -Wall -Wextra -Wno-unused-parameter -pedantic #-std=c99
CLIBS = -lreadline

all: main.c mpc.c
	mkdir -p bin/
	$(CC) $(CFLAGS) $(CLIBS) -o bin/main main.c mpc.c

debug: main.c mpc.c
	mkdir -p bin/
	$(CC) $(CFLAGS) $(CLIBS) -g -o bin/main main.c mpc.c

clean:
	rm -rf bin/
