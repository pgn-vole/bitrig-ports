# $OpenBSD: Makefile,v 1.54 2015/01/19 09:14:31 dcoppa Exp $

COMMENT=	server for streaming various media formats

CATEGORIES=	net audio

DISTNAME=	icecast-2.4.1
HOMEPAGE=	http://www.icecast.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/icecast/

WANTLIB +=	c curl>=2 crypto idn lzma m ogg pthread speex>=3
WANTLIB +=	ssl theora>=1 vorbis>=3 xml2 xslt>=3 z

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-theora=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	archivers/xz \
		audio/libvorbis \
		audio/speex \
		multimedia/libtheora \
		net/curl \
		textproc/libxslt

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
