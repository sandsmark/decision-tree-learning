OBJS = main.o
CC = g++
CFLAGS =-c -g -std=gnu++0x -Wall -O0
LFLAGS =
LIBS =

dtl: $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) $(LIBS) -o $@ 

main.o : main.cpp
	$(CC) $(CFLAGS) -o $@ main.cpp

.PHONY :  clean

clean:
	rm -f dtl $(OBJS)

run: dtl training.txt
	./dtl training.txt

test: dtl test.txt training.txt
	./dtl training.txt test.txt
