# $OpenBSD: Makefile,v 1.11 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT=	cartographic projection utilities

DISTNAME=	proj-4.8.0
CATEGORIES=	devel geo
SHARED_LIBS=	proj 6.0
REVISION=	1

DATUMGRID=	proj-datumgrid-1.5.zip

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

DISTFILES=${DISTNAME}${EXTRACT_SUFX} ${DATUMGRID}

HOMEPAGE=	http://trac.osgeo.org/proj/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.remotesensing.org/proj/ \
			http://download.osgeo.org/proj/

CONFIGURE_STYLE=	gnu
WANTLIB=		c m pthread
CONFIGURE_ENV=		LDFLAGS='-pthread'


BUILD_DEPENDS=		archivers/unzip

post-extract:
	${UNZIP} -oq ${FULLDISTDIR}/${DATUMGRID} -d ${WRKDIR}/${DISTNAME}/nad

.include <bsd.port.mk>
