.DEFAULT_GOAL := all

all: install

install:
	mkdir -p ~/bin/
	cp -f fubox_cleanup ~/bin/fubox_cleanup
	cp -f find_open ~/bin/find_unprotected

uninstall:
	rm ~/bin/fubox_cleanup
	rm ~/bin/find_open

.PHONY: all install uninstall
