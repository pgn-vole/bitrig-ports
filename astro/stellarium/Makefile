# $OpenBSD: Makefile,v 1.35 2015/01/21 16:46:26 ajacoutot Exp $

COMMENT=	free open source planetarium

DISTNAME=	stellarium-0.13.2

CATEGORIES=	astro x11

REVISION=	1

HOMEPAGE=	http://www.stellarium.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=stellarium/}

WANTLIB += GL Qt5Concurrent Qt5Core Qt5Declarative Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5Script Qt5Widgets c m pthread z
WANTLIB += c++ c++abi

MODULES=	devel/cmake \
		x11/qt5

# used to download more stars definitions
RUN_DEPENDS=	net/curl \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

CONFIGURE_STYLE=cmake
CONFIGURE_ENV=	HOME=${WRKDIR}
CONFIGURE_ARGS=	-Wno-dev \
		-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include" \
		-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include"

PORTHOME=	${WRKDIR}

NO_TEST=	Yes

pre-configure:
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/stellarium.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
