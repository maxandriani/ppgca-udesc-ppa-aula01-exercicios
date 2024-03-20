# GNU Makefile

CC = gcc 
CCFLAGS = -g -Wall
LDFLAGS = -g
TARGET = main

%.o: %.c
	$(CC) $(CCFLAGS) -c $<

%: %.o
	$(CC) $(LDFLAGS) $^ -o $@ 

all: $(TARGET)

# Dependencias

main: matriz.o main.c
matriz.o: matriz.c matriz.h

clean:
	rm -rf *.o *~ $(TARGET) main.dSYM*
