# $OpenBSD: Makefile,v 1.129 2014/09/08 07:35:31 jasper Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.30.0
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}

REVISION=		2

SHARED_LIBS=		gtop-2.0	9.0	# .10.0

CATEGORIES=		devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Xau c kvm pcre pthread glib-2.0

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS +=	gobject-introspection

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			ac_cv_header_sys_mount_h=yes

.ifdef DEBUG
CONFIGURE_ARGS+=	--enable-debug
CPPFLAGS+=		-DDEBUG \
			-DLIBGTOP_ENABLE_DEBUG \
			-DLIBGTOP_FATAL_WARNINGS
.endif

.include <bsd.port.mk>
