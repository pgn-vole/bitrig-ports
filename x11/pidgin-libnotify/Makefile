# $OpenBSD: Makefile,v 1.18 2013/03/21 08:48:56 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	pidgin plugin to display messages through libnotify

DISTNAME=	pidgin-libnotify-0.14
CATEGORIES=	x11

REVISION=	3

HOMEPAGE=	http://gaim-libnotify.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaim-libnotify/}

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODULES=	devel/gettext \
		textproc/intltool
LIB_DEPENDS=	net/pidgin,-libpurple \
		devel/libnotify>=0.7.2 \
		x11/gtk+2
BUILD_DEPENDS=	net/pidgin

USE_GMAKE=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
