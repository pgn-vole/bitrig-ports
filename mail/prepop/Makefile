# $OpenBSD: Makefile,v 1.12 2013/03/11 11:23:53 espie Exp $

BROKEN= 	needs work on bitrig

COMMENT=	simple interactive POP3 client

DISTNAME=	prepop-0.1b7
REVISION =	4
CATEGORIES=	mail

# GPL
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c m readline termcap
WANTLIB +=		c++ c++abi pthread
LIB_DEPENDS=		devel/readline

MAKE_FLAGS= \
	CC='${CXX}' \
	CFLAGS='${CFLAGS} -c -DVERSION="$${VERSION}" -DDATE="$${DATE}"' \
	LDFLAGS='-lreadline -ltermcap'

ALL_TARGET=	compile link

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/prepop ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prepop
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/prepop

.include <bsd.port.mk>
