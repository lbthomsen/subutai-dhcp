#
# Makefile for subutai-dhcp
#
CC     = gcc
CFLAGS = -Wall -ggdb
OBJS   = args.o bindings.o dhcpserver.o options.o

.c.o:
	$(CC) -c -o $@ $< $(CFLAGS)

dhcpserver: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

install: dhcpserver
	@install -D --mode 755 dhcpserver $(DESTDIR)/usr/sbin/subutai-dhcp

clean:
	rm -f $(OBJS) dhcpserver
