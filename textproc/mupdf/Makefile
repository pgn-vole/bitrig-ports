# $OpenBSD: Makefile,v 1.54 2014/11/29 13:25:23 sthen Exp $

SHARED_ONLY =	Yes
SHARED_LIBS +=	mupdf 1.1

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.6
DISTNAME =	mupdf-$V-source
PKGNAME =	mupdf-$V
REVISION =	1

CATEGORIES =	textproc x11

HOMEPAGE =	http://mupdf.com/

# code: Affero v3 (UGH!)
# font maps: Adobe (redist ok, see headers).
# droid font: Apache.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext c crypto curl freetype idn jbig2dec jpeg m
WANTLIB += openjp2 pthread ssl z

# http://git.ghostscript.com/?p=mupdf.git;a=summary
MASTER_SITES =	http://mupdf.com/downloads/ \
		http://mupdf.com/downloads/archive/

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2>=2.0.1 \
		net/curl

USE_GMAKE =	Yes
NO_TEST =	Yes

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-ffunction-sections
.endif

# -I flags prepend mupdf's own, to allow building with previous ver installed
MAKE_ENV += CFLAGS="${CFLAGS} -I$(WRKSRC)/fitz -I$(WRKSRC)/pdf -I$(WRKSRC)/xps"

#XXX: mupdf segfaults using clang. Try again next time...
MAKE_FLAGS =	CC=cc CXX=c++ \
		HAVE_CURL=yes \
		CURL_LIB="-lcurl" \
		CURL_LIBS="-lpthread -lidn -lssl -lcurl" \
		SYS_OPENSSL_LIBS="-lssl -lcrypto" \
		LDFLAGS="${LDFLAGS}" \
		LIBmupdf_VERSION="${LIBmupdf_VERSION}" \
		build= verbose=yes

FAKE_FLAGS =	NOCURL= prefix=${PREFIX} mandir=${PREFIX}/man

pre-configure:
	cd ${WRKSRC}/; ${SUBST_CMD} Makerules
	rm -rf ${WRKSRC}/thirdparty

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}
	${INSTALL_DATA} ${FILESDIR}/mupdf.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/mupdf.desktop ${PREFIX}/share/applications/
	cd ${PREFIX}/bin; ln -s mupdf-x11 mupdf

.include <bsd.port.mk>
