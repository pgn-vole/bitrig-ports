# $OpenBSD: Makefile,v 1.4 2014/12/09 18:55:42 zhuk Exp $

COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
DISTNAME =	quazip-0.7
CATEGORIES =	archivers
REVISION =	1

SHARED_LIBS =	quazip 1.0		# 1.0

HOMEPAGE =	http://quazip.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += m z
WANTLIB += c++ c++abi pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=quazip/}

MODULES =	devel/cmake \
		x11/qt4

NO_TEST =	Yes

CONFIGURE_ARGS =	-DBUILD_WITH_QT4=Yes

.include <bsd.port.mk>
