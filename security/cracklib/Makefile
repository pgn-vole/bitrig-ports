# $OpenBSD: Makefile,v 1.13 2014/10/06 08:19:26 benoit Exp $

COMMENT =		sensible unix password cracker

DISTNAME =		cracklib-2.9.2
SHARED_LIBS =		crack	0.3	# 11.0
CATEGORIES =		security

HOMEPAGE =		http://sourceforge.net/projects/cracklib/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cracklib/}

MODULES =		lang/python \
			devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--without-x \
			--with-default-dict=${PREFIX}/share/cracklib/cracklib-small
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
  
post-install:
			/bin/sh ${WRKSRC}/util/cracklib-format ${WRKSRC}/dicts/cracklib-small | ${WRKSRC}/util/cracklib-packer  \
			${WRKSRC}/dicts/cracklib-small
			${INSTALL_DATA} ${WRKSRC}/dicts/cracklib-small.* ${PREFIX}/share/cracklib

NO_TEST =		Yes
	
.include <bsd.port.mk>
