# $OpenBSD: Makefile,v 1.7 2015/03/16 18:07:37 naddy Exp $

COMMENT=	simplified-traditional chinese translate tool

DISTNAME=	cconv-0.6.2
REVISION=	4

CATEGORIES=	chinese converters

SHARED_LIBS=	cconv		0.0

HOMEPAGE=	https://code.google.com/p/cconv/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB= 	c

MASTER_SITES=	https://cconv.googlecode.com/files/

MODULES=	converters/libiconv

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	includedir=${PREFIX}/include/cconv/

post-patch:
	@perl -i -pe 's:UTF-TW:UTF8-TW:g' ${WRKSRC}/main.c

.include <bsd.port.mk>
