# $OpenBSD: Makefile,v 1.11 2013/03/21 08:48:57 ajacoutot Exp $

COMMENT=	showcase for GTK+ 2 widgets

DISTNAME=	thewidgetfactory-0.2.1
REVISION=	5
CATEGORIES=	x11

HOMEPAGE=	http://www.stellingwerff.com/?page_id=10

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.stellingwerff.com/TheWidgetFactory/

LIB_DEPENDS=	x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png z pthread-stubs xcb gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0

CONFIGURE_STYLE=gnu

MODULES+=	devel/gettext

NO_TEST=	Yes

.include <bsd.port.mk>
