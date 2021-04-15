.POSIX:

CONFIGFILE = config.mk
include $(CONFIGFILE)


OBJ =\
	addressbook.o

HDR =


all: addressbook
$(OBJ): $(@:.o=.c) $(HDR)

.c.o:
	$(CC) -c -o $@ $< $(CFLAGS) $(CPPFLAGS)

addressbook: $(OBJ)
	$(CC) -o $@ $(OBJ) $(LDFLAGS)

install: addressbook
	mkdir -p -- "$(DESTDIR)$(PREFIX)/bin/"
	cp -- addressbook "$(DESTDIR)$(PREFIX)/bin/"

uninstall:
	-rm -f -- "$(DESTDIR)$(PREFIX)/bin/addressbook"

clean:
	-rm -f -- *.o *.a *.su $(OBJ) addressbook

.SUFFIXES:
.SUFFIXES: .c .o

.PHONY: all install uninstall clean
