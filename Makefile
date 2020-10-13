OBJS	= mm.o testapp.o
SOURCE	= mm.c testapp.c
HEADER	= mm.h uapi_mm.h
OUT	= test.exe
CC	 = gcc
FLAGS	 = -g -c -Wall
LFLAGS	 = 

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

mm.o: mm.c
	$(CC) $(FLAGS) mm.c 

testapp.o: testapp.c
	$(CC) $(FLAGS) testapp.c 


clean:
	rm -f test.exe mm.o testapp.o