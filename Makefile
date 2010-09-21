# vim: ts=8 sw=8

CC	=gcc -march=i686
CFLAGS	=-Os -Wall -pedantic -g
LDFLAGS	=-g
LDLIBS	=

all:	chuff-me

clean:
	${RM} *.o a.out core core.* lint tags

distclean clobber: clean
	${RM} chuff-me

check:	chuff-me
	./chuff-me ${ARGS}
