# $OpenBSD: Makefile,v 1.6 2014/01/01 20:46:28 naddy Exp $

COMMENT=	dynamic .signature generator

DISTNAME=	signify-1.11
REVISION=	0
CATEGORIES=	mail

HOMEPAGE=	http://signify.sourceforge.net/

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=signify/}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/signify

EXAMPLESDIR=	${PREFIX}/share/examples/signify

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/signify.pl ${PREFIX}/bin/signify
	${INSTALL_MAN} ${WRKSRC}/signify.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
.for f in Columned Complex Simple SimpleOrColumned
	${INSTALL_DATA} ${WRKSRC}/examples/${f} ${EXAMPLESDIR}
.endfor

.include <bsd.port.mk>
