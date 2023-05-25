.DEFAULT_GOAL := all

all: install

install: install-module
	mkdir -p ~/bin/
	cp -f dir_cleanup ~/bin/dir_cleanup
	cp -f find_open ~/bin/find_open

install-module:
	mkdir -p ~/.modules
	cp -f module-intel-oneapi ~/.modules/intel-oneapi

uninstall:
	rm ~/bin/dir_cleanup
	rm ~/bin/find_open
	rm ~/.modules/intel-oneapi

.PHONY: all install install-module uninstall
