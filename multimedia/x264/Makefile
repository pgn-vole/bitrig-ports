# $OpenBSD: Makefile,v 1.31 2015/01/07 08:53:07 brad Exp $

COMMENT=	free H.264/MPEG-4 AVC encoder

V=		20141218
DISTNAME=	x264-snapshot-${V}-2245
PKGNAME=	x264-${V}
REVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.videolan.org/pub/videolan/x264/snapshots/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x264	14.0

HOMEPAGE=	http://www.videolan.org/developers/x264.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/yasm
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--disable-ffms \
		--disable-gpac \
		--disable-lavf \
		--disable-swscale \
		--enable-static \
		--prefix=${PREFIX}

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS+=--disable-asm
.endif

NO_TEST=	Yes

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ARGS+=--enable-shared \
		--system-libx264
.endif
