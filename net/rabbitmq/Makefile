# $OpenBSD: Makefile,v 1.21 2015/02/10 17:53:51 sebastia Exp $

COMMENT =	highly reliable Enterprise Messaging System

V =		3.4.2
REVISION =	0
DISTNAME =	rabbitmq-server-$V
PKGNAME =	rabbitmq-$V
CATEGORIES =	net

HOMEPAGE =	http://www.rabbitmq.com/

# MPL
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =	http://www.rabbitmq.com/releases/rabbitmq-server/v${V}/

MODULES =	lang/python
MODPY_RUNDEP =	No

USE_GMAKE =	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE = none

BUILD_DEPENDS =	${RUN_DEPENDS} \
		archivers/unzip \
		archivers/zip \
		textproc/docbook \
		textproc/docbook-xsl \
		textproc/libxslt \
		textproc/xmlto

RUN_DEPENDS =	lang/erlang>=15b.01p0v0

MAKE_ENV =	PYTHON=${MODPY_BIN} VERSION=${V}

RABBITUSER =	_rabbitmq

SUBST_VARS +=	RABBITUSER V

MODPY_ADJ_FILES +=	plugins-src/rabbitmq-amqp1.0/codegen.py 
MODPY_ADJ_FILES +=	plugins-src/rabbitmq-management/bin/rabbitmqadmin

NO_TEST =	Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/scripts/rabbitmqctl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rabbitmq
	@for file in INSTALL LICENSE*; do \
		mv ${PREFIX}/lib/rabbitmq/$$file \
			${PREFIX}/share/doc/rabbitmq; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rabbitmq
	${SUBST_CMD} -c ${FILESDIR}/rabbitmq.conf \
		${PREFIX}/share/examples/rabbitmq/rabbitmq-env.conf

.include <bsd.port.mk>
