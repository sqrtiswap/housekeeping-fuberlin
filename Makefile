.DEFAULT_GOAL := all

all: install

install: install-modules
	mkdir -p ~/bin/
	cp -f dir_cleanup ~/bin/dir_cleanup
	cp -f find_open ~/bin/find_open

install-modules:
	mkdir -p ~/.modules/intel-oneapi
	cp -f intel-oneapi/* ~/.modules/intel-oneapi/

uninstall:
	rm -f ~/bin/dir_cleanup
	rm -f ~/bin/find_open
	rm -Rf ~/.modules/intel-oneapi

.PHONY: all install install-modules uninstall
