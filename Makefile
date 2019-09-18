CC=gcc
PREFIX?=/usr/local/bin

dns2socks: DNS2SOCKS.c
	$(CC) -o dns2socks DNS2SOCKS.c

install: dns2socks
	install -m 0755 dns2socks $(PREFIX)

uninstall:
	rm $(PREFIX)/dns2socks

clean:
	rm -f dns2socks *~