EXEC = spi_flash
OBJS = spi.o spi_flash_model.o

CFLAGS += -DPARANOID_TTYS -DTERMCAP -DUSE_TERMIO -DKLUDGELINEMODE -D_GNU_SOURCE

all: $(EXEC)

#uses non LGPL libraries
$(EXEC): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

romfs:
	$(ROMFSINST) /sbin/$(EXEC)

clean:
	-rm -f $(EXEC) *.elf *.gdb *.o

$(OBJS): 
