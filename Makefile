.DEFAULT_GOAL := all

all: install

install:
	mkdir -p ~/bin/
	cp -f fubox_cleanup ~/bin/fubox_cleanup
	cp -f find_unprotected ~/bin/find_unprotected

uninstall:
	rm ~/bin/fubox_cleanup
	rm ~/bin/find_unprotected

.PHONY: all install uninstall
