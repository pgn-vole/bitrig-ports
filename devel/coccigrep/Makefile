# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:02 espie Exp $

COMMENT =	semantic grep, based on coccinelle

MODPY_EGG_VERSION = 1.11
DISTNAME =	coccigrep-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	devel textproc

HOMEPAGE =	http://home.regit.org/software/coccigrep/

# GPLv3 only
PERMIT_PACKAGE_CDROM =	 Yes

MASTER_SITES =	http://home.regit.org/wp-content/uploads/2011/08/

MODULES =	lang/python
RUN_DEPENDS =	devel/coccinelle
NO_TEST =	Yes

MODPY_SETUPTOOLS = Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/src/coccigrep.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coccigrep
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/coccigrep/
	${INSTALL_DATA} ${WRKSRC}/coccigrep.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
