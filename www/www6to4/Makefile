# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:50 espie Exp $

COMMENT=		IPv6 to IPv4 web proxy

DISTNAME=		www6to4-1.5
REVISION=		2
CATEGORIES=		www
HOMEPAGE=		http://www.dillema.net/software/www6to4.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.dillema.net/software/www6to4/

ALL_TARGET=		www6to4
CFLAGS+=		-DSYSCONFDIR=\"${SYSCONFDIR}\"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/www6to4 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/www6to4
	${INSTALL_DATA} ${WRKSRC}/*.conf ${PREFIX}/share/examples/www6to4
	perl -i -pe 's:/etc(/www6to4_forward.conf):${SYSCONFDIR}$$1:' \
		${PREFIX}/share/examples/www6to4/www6to4.conf

NO_TEST=		Yes

.include <bsd.port.mk>
