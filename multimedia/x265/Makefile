# $OpenBSD: Makefile,v 1.10 2015/02/18 03:59:26 brad Exp $

NOT_FOR_ARCHS=		${GCC3_ARCHS}
BROKEN-hppa =		undefined reference to `__sync_fetch_and_or_4'
BROKEN-mips64 =		undefined reference to `__sync_fetch_and_or_4'
BROKEN-mips64el =	undefined reference to `__sync_fetch_and_or_4'

COMMENT=	free H.265/HEVC encoder

VER=		1.5
DISTNAME=	x265_${VER}
PKGNAME=	x265-${VER}
CATEGORIES=	multimedia
MASTER_SITES=	https://bitbucket.org/multicoreware/x265/downloads/

SHARED_LIBS=	x265	2.0

HOMEPAGE=	http://x265.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread c++ c++abi

WRKSRC=		${WRKDIST}/source

MODULES=	devel/cmake

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	-DENABLE_TESTS=On

do-test:
	${WRKBUILD}/test/TestBench

.include <bsd.port.mk>
