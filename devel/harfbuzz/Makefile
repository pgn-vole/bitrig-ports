# $OpenBSD: Makefile,v 1.30 2015/03/21 09:19:13 ajacoutot Exp $

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			0.9.40
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.bz2

PKGNAME-main=		harfbuzz-${V}
PKGNAME-icu=		harfbuzz-icu-${V}

SHARED_LIBS +=  harfbuzz             5.0      # 940.0
SHARED_LIBS +=  harfbuzz-icu         0.2      # 940.0
SHARED_LIBS +=  harfbuzz-gobject     0.0      # 940.0

CATEGORIES=		devel graphics textproc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/HarfBuzz

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += freetype glib-2.0 graphite2 m pcre pthread z
WANTLIB += c++ c++abi pthread

MASTER_SITES=		http://www.freedesktop.org/software/harfbuzz/release/

MULTI_PACKAGES=		-main -icu

MODULES=		devel/gettext

USE_GMAKE=		Yes

WANTLIB-main += ${WANTLIB}
WANTLIB-main += X11 Xext Xrender c cairo expat fontconfig pixman-1
WANTLIB-main += png pthread-stubs xcb xcb-render xcb-shm ffi
WANTLIB-main += gobject-2.0

WANTLIB-icu += ${WANTLIB}
WANTLIB-icu += harfbuzz icudata icuuc

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			graphics/cairo \
			graphics/graphite2

LIB_DEPENDS-icu=	devel/harfbuzz,-main=${V} \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-introspection \
			--with-graphite2 \
			--with-gobject

pre-configure:
	perl -pi -e 's,for suffix in so,for suffix in so.${LIBharfbuzz_VERSION},,' \
		${WRKSRC}/src/check-symbols.sh

.include <bsd.port.mk>
