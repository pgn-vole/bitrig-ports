# $OpenBSD: Makefile,v 1.12 2015/03/18 20:06:57 landry Exp $

COMMENT=	Xfce4 mount device panel plugin

XFCE_VERSION=	0.6.7
XFCE_PLUGIN=	mount

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread-stubs xcb
WANTLIB += xcb-util xcb-render xcb-shm xfce4util xfce4ui-1 z
WANTLIB += ICE SM X11-xcb ffi pcre startup-notification-1
WANTLIB += harfbuzz pthread graphite2
WANTLIB += c++ c++abi

# needed to correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS="-liconv"

.include <bsd.port.mk>
