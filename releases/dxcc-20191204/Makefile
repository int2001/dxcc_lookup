# dxcc Makefile -- Fabian Kurz, DJ1YFK -- https://fkurz.net/ham/dxcc.html

VERSION = `date +%Y%m%d`
DESTDIR ?= /usr

all:
	@echo -e "dxcc - make [install|uninstall|clean|dist] \nCheck README for help."

install:
	install -d -v				$(DESTDIR)/share/man/man1/
	install -d -v				$(DESTDIR)/share/dxcc/
	install -m 0644 dxcc.1		$(DESTDIR)/share/man/man1/
	install -m 0644 earth.gif	$(DESTDIR)/share/dxcc/
	install -m 0755 dxcc		$(DESTDIR)/bin/
	
uninstall:
	rm -f $(DESTDIR)/bin/dxcc
	rm -f $(DESTDIR)/share/man/man1/dxcc.1
	rm -f $(DESTDIR)/share/dxcc/earth.gif

clean:
	rm -f *~

dist:
	rm -f releases/dxcc-$(VERSION).tar.gz
	rm -rf releases/dxcc-$(VERSION)
	mkdir dxcc-$(VERSION)
	cp dxcc.png ChangeLog dxcc COPYING earth.gif dxcc.1 README Makefile \
			dxcc-$(VERSION)
	sed -i "s/VERSION/$(VERSION)/g" dxcc-$(VERSION)/README
	sed -i "s/VERSION/$(VERSION)/g" dxcc-$(VERSION)/dxcc
	sed -i "s/VERSION/$(VERSION)/g" dxcc-$(VERSION)/dxcc.1
	tar -zcf dxcc-$(VERSION).tar.gz dxcc-$(VERSION)
	mv dxcc-$(VERSION) releases/
	mv dxcc-$(VERSION).tar.gz releases/
	md5sum releases/*.tar.gz > releases/md5sums.txt
	chmod a+r releases/*
