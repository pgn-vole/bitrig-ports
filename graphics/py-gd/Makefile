# $OpenBSD: Makefile,v 1.23 2014/07/11 08:54:57 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Python wrapper for the GD library

MODPY_EGG_VERSION= 0.58
GH_ACCOUNT=	Solomoriah
GH_PROJECT=	gdmodule
GH_TAGNAME=	v${MODPY_EGG_VERSION}
GH_COMMIT=	b8939e7864501dcf1bb9262d9559d298886b5950
DISTNAME=	${GH_PROJECT}-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L:S/module//}
REVISION=	0
CATEGORIES=	graphics

HOMEPAGE=	http://newcenturycomputers.net/projects/gdmodule.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += freetype gd>=20 jpeg png pthread z ${MODPY_WANTLIB}

MODULES=	lang/python

MODPY_SETUP=	Setup.py

LIB_DEPENDS=	graphics/gd

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-gd
DOCSDIR=	${PREFIX}/share/doc/py-gd

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Setup.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/demo/* ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/gd-ref.html ${DOCSDIR}

.include <bsd.port.mk>
