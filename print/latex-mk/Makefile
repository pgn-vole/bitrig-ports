# $OpenBSD: Makefile,v 1.8 2013/07/01 10:39:18 sthen Exp $

COMMENT=	set of Makefile fragments to manage LaTeX documents

DISTNAME=	latex-mk-1.9.1
REVISION=	2
CATEGORIES=	print
HOMEPAGE=	http://latex-mk.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=latex-mk/}

CONFIGURE_STYLE=gnu
PKG_ARCH=	*

TEST_DEPENDS=print/texlive/base

post-install:
	${INSTALL_DATA} ${WRKSRC}/dated_draft.ps ${PREFIX}/share/latex-mk

# workaround for modified dvips behavior
pre-test:
	@perl -pi -e 's/^(\w+)?dvips/env  \1dvips/' \
		${WRKSRC}/testsuite/bmake_ref/*.ref

do-test:
	@cd ${WRKBUILD}/testsuite && ./run_tests.sh --without-gmake

.include <bsd.port.mk>
