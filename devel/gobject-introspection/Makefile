# $OpenBSD: Makefile,v 1.80 2014/10/01 08:53:34 jasper Exp $

COMMENT=		GObject Introspection

GNOME_VERSION=		1.42.0
GNOME_PROJECT=		gobject-introspection

CATEGORIES=		devel

SHARED_LIBS +=  girepository-1.0     3.0      # 1.1

# Library: LGPLv2+
# Tools: GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre pthread z

LIB_DEPENDS=		devel/glib2

BUILD_DEPENDS=		devel/bison \
			graphics/cairo \
			www/py-mako

RUN_DEPENDS=		graphics/cairo \
			www/py-mako

YACC=			bison

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/build-aux

post-install:
	rm ${PREFIX}/lib/gobject-introspection/giscanner/*.{a,la}

.include <bsd.port.mk>
