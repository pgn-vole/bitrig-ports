# $OpenBSD: Makefile,v 1.16 2014/12/15 22:09:54 kili Exp $

COMMENT =		Iteratee monad provides strict, safe, and functional I/O

# XXX update to newer version needs a new dependency: exceptions.

DISTNAME =		iteratee-0.8.9.5
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-ListLike>=3.0,<5 \
			devel/hs-MonadCatchIO-transformers>0.2,<0.4 \
			devel/hs-monad-control>=0.3,<0.4 \
			devel/hs-parallel>=2,<4 \
			devel/hs-transformers-base>=0.4,<0.5
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
