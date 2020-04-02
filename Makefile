.SUFFIXES: .a .o .c
CC              =  gcc
CFLAGS          =  -Wall -funsigned-char -c -fPIC -ggdb

BINS = dcetest
ALL = $(BINS)

DCE_OBJS = dcetest.o tcpstuff.o

dcetest: $(DCE_OBJS)
	$(CC) -o dcetest $(DCE_OBJS)

clean:
	rm -f *~ *.bak
	rm -f include/*~ include/*.bak
	rm -f *.o
	rm -f dcetest


