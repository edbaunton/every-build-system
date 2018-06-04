.PHONY: clean

default: hello

hello: hello.c
	cc $< -o $@

install: hello
	mkdir -p $(DESTDIR)/usr/bin
	install hello $(DESTDIR)/usr/bin

clean:
	rm -f hello
