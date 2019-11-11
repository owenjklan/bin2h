CC=gcc
CFLAGS=-Wall -O2
OBJS= bin2h.o

.c.o:
	$(CC) -c $< -o $@ $(CFLAGS)

all: $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) -o bin2h
	strip bin2h

static: $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) -o bin2h -static
	strip bin2h

clean:
	rm -f bin2h
	rm -f *.o
	rm -f *~

install:
	cp bin2h /usr/local/bin

