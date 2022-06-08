OUTDIR?=.
CC=gcc
CFLAGS= -Wall -g -fno-reorder-blocks-and-partition
LDFLAGS= -Wl,--emit-relocs,-znow
RM=/bin/rm

TARGET = $(OUTDIR)/sample

.PHONY: all
all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(TARGET) $(TARGET).c

.PHONY: clean
clean:
	$(RM) -f *.o $(TARGET)

