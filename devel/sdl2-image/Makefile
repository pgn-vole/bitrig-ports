# $OpenBSD: Makefile,v 1.2 2013/11/27 05:13:37 brad Exp $

V =		2.0.0
COMMENT =	SDL2 image library
DISTNAME =	SDL2_image-${V}
PKGNAME =	sdl2-image-${V}
REVISION =	1
CATEGORIES =	devel graphics

SHARED_LIBS +=	SDL2_image		0.0 # 0.0

HOMEPAGE =	http://www.libsdl.org/projects/SDL_image/

# zlib
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.libsdl.org/projects/SDL_image/release/

WANTLIB += SDL2 jpeg m png pthread sndio tiff usbhid webp z

LIB_DEPENDS =	devel/sdl2 \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-jpg-shared \
			--disable-png-shared \
			--disable-tif-shared \
			--disable-webp-shared
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
