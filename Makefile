.DEFAULT_GOAL := all

all: install

install:
	mkdir -p ~/bin/
	cp -f dir_cleanup ~/bin/dir_cleanup
	cp -f find_open ~/bin/find_open

uninstall:
	rm ~/bin/dir_cleanup
	rm ~/bin/find_open

.PHONY: all install uninstall
