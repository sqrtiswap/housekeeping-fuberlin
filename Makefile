.DEFAULT_GOAL := all

all: install

install:
	mkdir -p ~/bin/
	cp -f fubox_cleanup ~/bin/fubox_cleanup

.PHONY: all install
