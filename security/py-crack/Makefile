# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:28 espie Exp $

COMMENT =		Python bindings for cracklib

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		python-crack-${MODPY_EGG_VERSION}
PKGNAME =		py-crack-${MODPY_EGG_VERSION}
REVISION=		4
CATEGORIES =   		security devel

HOMEPAGE =		http://www.nongnu.org/python-crack/

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.savannah.gnu.org/releases/python-crack/

MODULES =		lang/python
LIB_DEPENDS =		security/cracklib
WANTLIB =		crack ${MODPY_WANTLIB}

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_STYLE =       autoconf no-autoheader
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			DEFAULT_DICTPATH="${LOCALBASE}/share/cracklib/cracklib-small"

AUTOCONF_VERSION =	2.59
 
post-install:
			find ${WRKINST} -name \*.egg-info -exec rm {} \;

NO_TEST =		Yes

.include <bsd.port.mk>
