# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:43 espie Exp $

CATEGORIES =	multimedia
COMMENT =	closed caption subtitles extractor
HOMEPAGE = 	http://ccextractor.sourceforge.net/
V =		0.56
REVISION =	1
DISTFILES =	ccextractor.${V:S/.//}-src.zip
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ccextractor/}
DISTNAME =	ccextractor-$V
WRKDIST =	${WRKDIR}/ccextractor.$V
WRKSRC =	${WRKDIST}/src

# GPL 2.0
PERMIT_PACKAGE_CDROM =		Yes

DOCDIR = 	${PREFIX}/share/doc/ccextractor
NO_TEST =	Yes

do-configure:
	ln -s ${FILESDIR}/Makefile ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ccextractor ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	for i in ${WRKDIST}/docs/*.TXT; do \
		${INSTALL_DATA} $$i ${DOCDIR}; \
	done

WANTLIB +=	c m
WANTLIB +=	c++ c++abi pthread

.include <bsd.port.mk>
