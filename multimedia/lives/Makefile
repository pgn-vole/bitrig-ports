# $OpenBSD: Makefile,v 1.9 2013/05/31 15:34:52 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		video editor and a VJ tool

V =			1.0.10
DISTNAME =		LiVES-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		5

SHARED_LIBS +=		weed		0.0 # 0.2
SHARED_LIBS +=		weed_slice	0.0 # 0.2

CATEGORIES =		multimedia

HOMEPAGE =		http://lives.sourceforge.net
MASTER_SITES =		http://www.xs4all.nl/%7Esalsaman/lives/current/

# GPL v3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c
WANTLIB += cairo drm dv expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m mjpegutils ogg oil-0.3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sndio
WANTLIB += theora usbhid xcb xcb-render xcb-shm z
WANTLIB += c++ c++abi

MODULES =		devel/gettext
RUN_DEPENDS =		graphics/ImageMagick \
			x11/mplayer \
			audio/sox \
			sysutils/cdrtools \
			audio/vorbis-tools \
			multimedia/transcode \
			audio/xmms \
			devel/desktop-file-utils
BUILD_DEPENDS =		audio/vorbis-tools
LIB_DEPENDS =		multimedia/libtheora \
			devel/sdl \
			multimedia/libdv \
			x11/gtk+2 \
			audio/libogg \
			devel/liboil \
			multimedia/mjpegtools


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-jack \
			--disable-frei0r \
			--disable-libvisual \
			--disable-static

WRKDIST =		${WRKDIR}/${DISTNAME:L}

pre-install:
	@cd ${WRKDIST}/po && ${MAKE_PROGRAM} update-po

post-install:
	mv ${WRKINST}/${TRUEPREFIX}/share/doc/lives-${V} \
	    ${WRKINST}/${TRUEPREFIX}/share/doc/lives/
	find ${WRKINST}/${TRUEPREFIX}/lib/lives/plugins -name '*.la' | xargs rm

.include <bsd.port.mk>
