# $OpenBSD: php.port.mk,v 1.4 2011/05/13 09:41:24 robert Exp $

SHARED_ONLY=		Yes

CATEGORIES+=		lang/php

MODPHP_VERSION?=	5.2
.if ${MODPHP_VERSION} == 5.2
MODPHP_VSPEC = >=${MODPHP_VERSION},<5.3
.else if ${MODPHP_VERSION} == 5.3
MODPHP_VSPEC = >=${MODPHP_VERSION},<5.4
.endif
MODPHPSPEC = php-${MODPHP_VSPEC}

MODPHP_RUN_DEPENDS=	${MODPHPSPEC}:lang/php/${MODPHP_VERSION}
MODPHP_LIB_DEPENDS=	${MODPHPSPEC}:lang/php/${MODPHP_VERSION}
MODPHP_WANTLIB =	php${MODPHP_VERSION}
_MODPHP_BUILD_DEPENDS=	${MODPHPSPEC}:lang/php/${MODPHP_VERSION}

BUILD_DEPENDS+=		${_MODPHP_BUILD_DEPENDS}
RUN_DEPENDS+=		${MODPHP_RUN_DEPENDS}

MODPHP_BIN=		${LOCALBASE}/bin/php-${MODPHP_VERSION}
MODPHP_INCDIR=		${LOCALBASE}/include/php-${MODPHP_VERSION}
MODPHP_LIBDIR=		${LOCALBASE}/lib/php-${MODPHP_VERSION}

MODPHP_CONFIGURE_ARGS=	--with-php-config=${LOCALBASE}/bin/php-config-${MODPHP_VERSION}
SUBST_VARS+=		MODPHP_VERSION

MODPHP_DO_PHPIZE?=
.if !empty(MODPHP_DO_PHPIZE)
AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_ENV+=		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION}
CONFIGURE_ARGS+=	${MODPHP_CONFIGURE_ARGS}

pre-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize-${MODPHP_VERSION}
.endif

MODPHP_DO_SAMPLE?=
.if !empty(MODPHP_DO_SAMPLE)
PV=		${MODPHP_VERSION}
MODULE_NAME=	${MODPHP_DO_SAMPLE}
SUBST_VARS+=	PV MODULE_NAME
MESSAGE?=	${PORTSDIR}/lang/php/files/MESSAGE-ext
UNMESSAGE?=	${PORTSDIR}/lang/php/files/UNMESSAGE-ext
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	@echo "extension=${MODPHP_DO_SAMPLE}.so" > \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}/${MODPHP_DO_SAMPLE}.ini
.endif
