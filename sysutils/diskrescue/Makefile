# $OpenBSD: Makefile,v 1.9 2015/02/16 22:57:12 naddy Exp $

COMMENT =		fancy dd

DISTNAME =		diskrescue-0.3
REVISION =		2

CATEGORIES =		sysutils

HOMEPAGE =		http://opensource.conformal.com/wiki/Disk_Rescue

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		http://opensource.conformal.com/snapshots/diskrescue/

EXTRACT_SUFX =		.tgz

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/diskrescue ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/diskrescue.8 ${PREFIX}/man/man8/diskrescue.8

.include <bsd.port.mk>
