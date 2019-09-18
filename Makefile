CC=gcc
PREFIX?=/usr/local/bin

dns2socks: dns2socks.c include/stdafx.c include/stdafx.h
	$(CC) -pthread -o dns2socks dns2socks.c

install: dns2socks
	install -m 0755 dns2socks $(PREFIX)

uninstall:
	rm $(PREFIX)/dns2socks

clean:
	rm -f dns2socks *~
