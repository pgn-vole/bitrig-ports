# $OpenBSD: Makefile,v 1.5 2015/01/08 21:21:23 jeremy Exp $

COMMENT =	sqlite3 driver for swift

DISTNAME =	swift-db-sqlite3-0.1.3
REVISION =	3
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	uuid sqlite3
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/sqlite3/extconf.rb

.include <bsd.port.mk>
