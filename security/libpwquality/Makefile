# $OpenBSD: Makefile,v 1.8 2014/08/14 06:40:00 ajacoutot Exp $

BROKEN = 	needs work on bitrig

COMMENT =	library to generate, and check strenght of passwords

DISTNAME =	libpwquality-1.2.4

SHARED_LIBS +=  pwquality            1.0      # 1.2

CATEGORIES =	security

HOMEPAGE =	https://fedorahosted.org/libpwquality/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://fedorahosted.org/releases/l/i/libpwquality/
EXTRACT_SUFX =		.tar.bz2

WANTLIB =		c crack pthread z ${MODPY_WANTLIB}

MODULES =		devel/gettext \
			lang/python

LIB_DEPENDS =		security/cracklib


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-python-binary=python${MODPY_VERSION} \
			--with-python-rev=${MODPY_VERSION} \
			--with-sconfigdir=${SYSCONFDIR} \
			--disable-pam
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		secureconfdir=${PREFIX}/share/examples/libpwquality/

.include <bsd.port.mk>
