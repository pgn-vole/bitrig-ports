# $OpenBSD: Makefile,v 1.56 2013/04/29 12:10:24 ajacoutot Exp $

ONLY_FOR_ARCHS =	alpha i386 powerpc sparc64 amd64

CATEGORIES =	x11

COMMENT =	DVD player
DISTNAME =	ogle-0.9.2
REVISION =	18
SHARED_LIBS =	dvdcontrol	11.0 \
		msgevents	8.0
HOMEPAGE =	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES =	${HOMEPAGE}dist/

CONFIGURE_STYLE =	gnu

#FAKE=all
# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xinerama Xv Xxf86vm a52 c dvdcss dvdread
WANTLIB += jpeg m mad sndio xcb xml2 z

MODULES =	converters/libiconv

LIB_DEPENDS =	audio/liba52 \
		devel/libdvdread \
		textproc/libxml>=2.4.19 \
		graphics/jpeg \
		audio/libmad

USE_GROFF =	Yes

CONFIGURE_ARGS =	--disable-oss \
			--disable-sunaudio \
			--enable-obsdaudio \
			--disable-altivec \
			--with-libjpeg=${DEPBASE} \
			--with-dvdread=${DEPBASE} \
			--with-liba52=${DEPBASE} \
			--with-libmad=${DEPBASE} \
			--with-xml-prefix=${DEPBASE}

CONFIGURE_ENV +=	xml_config_args=--prefix=${DEPBASE} \
			LIBOGLEAO_LIBS="-lsndio"

post-install:
	cd ${PREFIX}/lib && \
	ln -sf ${TRUEPREFIX}/lib/ogle/libdvdcontrol.so.${LIBdvdcontrol_VERSION}
	cd ${PREFIX}/lib && \
	ln -sf ${TRUEPREFIX}/lib/ogle/libmsgevents.so.${LIBmsgevents_VERSION}

.include <bsd.port.mk>
