# $OpenBSD: Makefile,v 1.5 2014/11/07 10:40:05 ajacoutot Exp $

COMMENT =		owncloud sync client

DISTNAME =		mirall-1.4.2
REVISION =		2

SHARED_LIBS =		owncloudsync 0.0

CATEGORIES =		net

HOMEPAGE =		http://owncloud.org/sync-clients/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c lib/inotify/inotify lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtTest lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns m ocsync pthread
WANTLIB += sqlite3

MASTER_SITES =		http://download.owncloud.com/desktop/stable/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake x11/qt4
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		devel/libinotify \
			net/ocsync

CONFIGURE_ARGS +=	-DCSYNC_INCLUDE_PATH=${LOCALBASE}/include/ocsync

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/etc ${PREFIX}/share/examples/mirall

.include <bsd.port.mk>
