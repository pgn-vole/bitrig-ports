# $OpenBSD: Makefile,v 1.22 2014/11/25 22:11:03 kili Exp $

COMMENT =		library to convert between different types

DISTNAME =		convertible-1.1.0.0
REVISION =		0
CATEGORIES =		devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-text>=0.7
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
