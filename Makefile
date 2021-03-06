PREFIX=/usr
BINDIR=$(PREFIX)/bin

CC=clang
INSTALL=ginstall

all:	stun
distclean:	clean

clean:
	rm stun


install: all
	$(INSTALL) -D stun $(DESTDIR)$(BINDIR)/stun

stun:
	$(CC) -g stun.c -o stun -lpthread
