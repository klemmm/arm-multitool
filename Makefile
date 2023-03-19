ARCH=arm-unknown-linux-gnueabi-
#ARCH=
CC=$(ARCH)gcc
CC=$(ARCH)gcc
AS=$(ARCH)as
STRIP=$(ARCH)strip

LDFLAGS=-nostdlib -static
CFLAGS=-nostdlib -DPORT=$(PORT) -DIP=$(IP) -DFILENAME=$(FILENAME) -DPROCESS_NAME=$(PROCESS_NAME) -Os -mthumb -Wall

EXECS = arm-multitool

all: $(EXECS)
	$(STRIP) $(EXECS)

syscall.o: syscall.s

arm-multitool.o: arm-multitool.c common.h

arm-multitool: arm-multitool.o common.o syscall.o

clean:
	rm -f *.o arm-multitool *~

.PHONY: all clean