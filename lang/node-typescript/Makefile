# $OpenBSD: Makefile,v 1.11 2015/01/17 00:06:34 jturner Exp $

COMMENT =		typed superset of JavaScript

NPM_VERSION =		1.4.1
NPM_NAME =		typescript
CATEGORIES =		lang

HOMEPAGE =		http://www.typescriptlang.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm

NO_TEST =		Yes

# Only the single tsc file should be linked from the bin directory
do-install:
	mkdir ${PREFIX}/lib/node_modules; \
	mv ${WRKDIR}/node_modules/${NPM_NAME} ${PREFIX}/lib/node_modules; \
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/node_modules; \
	chmod 755 ${PREFIX}/lib/node_modules/${NPM_NAME}/bin/tsc
	ln -s ${TRUEPREFIX}/lib/node_modules/${NPM_NAME}/bin/tsc ${PREFIX}/bin/tsc

.include <bsd.port.mk>
