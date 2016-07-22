# $Id: Makefile.in,v 1.25 2003/02/24 01:55:56 djm Exp $

sysconfdir=/etc/ssh
piddir=/var/run
srcdir=.
top_srcdir=..


CC=gcc
LD=gcc
CFLAGS=-g -O2 -Wall -Wpointer-arith -Wno-uninitialized
CPPFLAGS=-I. -I.. -I$(srcdir) -I$(srcdir)/..  -DHAVE_CONFIG_H
LIBS=-lutil -lz -lnsl  -lcrypto -lcrypt  
AR=/usr/bin/ar
RANLIB=ranlib
INSTALL=/usr/bin/install -c
LDFLAGS=-L. 

OPENBSD=base64.o basename.o bindresvport.o daemon.o dirname.o getcwd.o getgrouplist.o getopt.o glob.o inet_aton.o inet_ntoa.o inet_ntop.o mktemp.o readpassphrase.o realpath.o rresvport.o setenv.o setproctitle.o sigact.o strlcat.o strlcpy.o strmode.o strsep.o vis.o

COMPAT=bsd-arc4random.o bsd-cray.o bsd-cygwin_util.o bsd-getpeereid.o bsd-misc.o bsd-nextstep.o bsd-snprintf.o bsd-waitpid.o fake-getaddrinfo.o fake-getnameinfo.o xmmap.o

PORTS=port-irix.o port-aix.o

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $<

all: libopenbsd-compat.a

$(COMPAT): ../config.h
$(OPENBSD): ../config.h
$(PORTS): ../config.h

libopenbsd-compat.a:  $(COMPAT) $(OPENBSD) $(PORTS)
	$(AR) rv $@ $(COMPAT) $(OPENBSD) $(PORTS)
	$(RANLIB) $@

clean:
	rm -f *.o *.a core 

distclean: clean
	rm -f Makefile *~
