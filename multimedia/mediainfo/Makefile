# $OpenBSD: Makefile,v 1.2 2014/11/05 16:15:06 naddy Exp $

BROKEN= 	needs work on bitrig

COMMENT=	display technical and tag data for video and audio files

VERSION=	0.7.70
PKGNAME=	mediainfo-${VERSION}
CATEGORIES=	multimedia
HOMEPAGE=	http://mediainfo.sourceforge.net/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread z
WANTLIB +=	c++ c++abi

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mediainfo/}
DISTFILES=	MediaInfo_CLI_${VERSION}_GNU_FromSource.tar.bz2

WRKDIST=	${WRKDIR}/MediaInfo_CLI_GNU_FromSource

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	SUBDIRS="${SUBDIRS}"
MAKE_ENV=	SUBDIRS="${SUBDIRS}"
LIBTOOL_FLAGS=	--tag=disable-shared
MODGNU_CONFIG_GUESS_DIRS=${SUBDIRS}

ZENLIBDIR=	${WRKSRC}/ZenLib/Project/GNU/Library
MEDIAINFOLIBDIR=${WRKSRC}/MediaInfoLib/Project/GNU/Library
MEDIAINFODIR=	${WRKSRC}/MediaInfo/Project/GNU/CLI

SUBDIRS=	${ZENLIBDIR} ${MEDIAINFOLIBDIR} ${MEDIAINFODIR}

NO_TEST=	Yes

# fix line endings for files that are patched
pre-patch:
	@perl -i -pe 's/\r$$//' \
	    ${WRKSRC}/MediaInfoLib/Source/MediaInfo/MediaInfo_Internal.cpp

pre-configure:
	@cp ${FILESDIR}/configure ${FILESDIR}/Makefile ${WRKSRC}
	@chmod a+x ${WRKSRC}/configure

do-install:
	@cd ${MEDIAINFODIR} && ${LIBTOOL} ${LIBTOOL_FLAGS} --mode=install \
	    ${INSTALL_PROGRAM} mediainfo ${PREFIX}/bin

.include <bsd.port.mk>
