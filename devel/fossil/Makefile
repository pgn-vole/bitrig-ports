# $OpenBSD: Makefile,v 1.46 2015/03/14 20:52:23 jturner Exp $

BROKEN =		needs work on bitrig

COMMENT =		simple distributed software configuration management

DISTNAME =		fossil-src-20150119112900
PKGNAME =		fossil-1.30
REVISION =		0
EPOCH =			0
CATEGORIES =		devel www

HOMEPAGE =		http://fossil-scm.org/
MASTER_SITES =		http://fossil-scm.org/download/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS=		static
FLAVOR?=

WANTLIB =		c crypto fuse ssl sqlite3>=28.0 z

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-internal-sqlite --disable-lineedit
CONFLICT_MARKER =	fossil-*-!static

.if ${FLAVOR} == "static"
CONFIGURE_ARGS +=	--static --with-openssl=none
PREFIX =		${VARBASE}/www
CONFLICT_MARKER =	fossil-*-static
.endif

SUBST_VARS +=		CONFLICT_MARKER STATIC

TEST_DEPENDS =		${MODTCL_RUN_DEPENDS}

post-extract:
	@rm -f ${WRKSRC}/src/sqlite3.h

pre-configure:
	${SUBST_CMD} ${WRKSRC}/auto.def

do-test:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
