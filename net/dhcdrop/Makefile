# $OpenBSD: Makefile,v 1.1.1.1 2013/12/11 19:15:15 kirby Exp $

COMMENT =		testing and/or dropping DHCP server

DISTNAME =		dhcdrop-0.5
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		http://www.netpatch.ru/dhcdrop.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pcap

MASTER_SITES =		http://www.netpatch.ru/projects/dhcdrop/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu

CFLAGS =		"-std=gnu89"

post-extract:
	perl -pi -e 's/\r$$//' ${WRKSRC}/man/dhcdrop.8
	perl -pi -e 's/\s+$$/\n/' ${WRKSRC}/man/dhcdrop.8

.include <bsd.port.mk>
