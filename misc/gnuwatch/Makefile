# $OpenBSD: Makefile,v 1.10 2013/10/11 23:50:10 naddy Exp $

COMMENT=		GNU watch command

DISTNAME=		procps-3.2.8
PKGNAME=		${DISTNAME:S/procps/gnuwatch/}
REVISION=		0
CATEGORIES=		misc

HOMEPAGE=		http://procps.sourceforge.net/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ncurses c

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes

do-build:
	${CC} ${CFLAGS} -c ${WRKSRC}/watch.c -o ${WRKSRC}/watch.o
	${CC} ${CFLAGS} ${LDFLAGS} ${WRKSRC}/watch.o -o ${WRKSRC}/gnuwatch \
	    -lncurses

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gnuwatch ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/watch.1 ${PREFIX}/man/man1/gnuwatch.1

.include <bsd.port.mk>
