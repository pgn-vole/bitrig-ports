# $OpenBSD: Makefile,v 1.11 2014/09/16 19:19:24 landry Exp $

BROKEN-alpha =	OOM on XcomRuleset.cpp
BROKEN-hppa =	OOM on Engine/Scalers/hq4x.cpp	
COMMENT =		open source reimplementation of the original X-Com

DISTNAME =		openxcom-1.0.0
REVISION = 		0
EPOCH =			0
CATEGORIES =		games x11

HOMEPAGE =		http://openxcom.org

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL SDL_gfx SDL_image SDL_mixer c m pthread \
			yaml-cpp
WANTLIB +=		c++ c++abi

MASTER_SITES =		${HOMEPAGE}/wp-content/uploads/downloads/2014/06/

MODULES =		devel/cmake

RUN_DEPENDS =		audio/timidity \
			devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		devel/sdl-gfx \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/yaml-cpp>=0.5.1

CONFIGURE_ARGS =	-DDEV_BUILD=Off

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Engine/CrossPlatform.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openxcom
	cd ${WRKDIST}/bin/data && find . | pax -rw ${PREFIX}/share/openxcom

.include <bsd.port.mk>
