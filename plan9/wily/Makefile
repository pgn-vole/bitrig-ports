# $OpenBSD: Makefile,v 1.30 2014/12/12 19:50:16 naddy Exp $

COMMENT=	clone of the Plan9 editor 'acme'

VERSION=	0.13.41
REVISION=	0
DISTNAME=	wily-9libs
PKGNAME=	${DISTNAME:S/-/_/}-${VERSION}
EPOCH=		1
CATEGORIES=	plan9 editors
MASTER_SITES=	ftp://ftp.cs.yorku.ca/pub/wily/src/

HOMEPAGE=	http://www.cs.yorku.ca/~oz/wily/

# BSD licence
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xg Xt c frame m plan9c pthread-stubs xcb

LIB_DEPENDS=		plan9/9libs

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-9libs=${LOCALBASE}/include/9libs
CONFIGURE_ENV=		mhw_cv_mod_9libs_lib_path=${LOCALBASE}/lib

NO_TEST=		Yes

post-install:
	${INSTALL_MAN} ${FILESDIR}/wily.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
