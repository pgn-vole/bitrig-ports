# $OpenBSD: Makefile,v 1.2 2013/03/11 11:07:38 espie Exp $

COMMENT =	Enigma levels to the game chroma

DISTNAME =	chroma-enigma-0.20101210
REVISION =	0

CATEGORIES =	games x11

HOMEPAGE =	http://level7.org.uk/chroma/

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://leva.ecentrum.hu/openbsd/

RUN_DEPENDS =	games/chroma

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/chroma/levels/enigma
	${INSTALL_DATA} ${WRKDIST}/levels/enigma/* \
		 ${PREFIX}/share/chroma/levels/enigma/

.include <bsd.port.mk>
