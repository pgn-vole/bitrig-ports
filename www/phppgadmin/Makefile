# $OpenBSD: Makefile,v 1.25 2014/11/06 17:13:41 sthen Exp $

COMMENT=	tool to handle the administration of PostgreSQL over the web

DISTNAME=	phpPgAdmin-5.1
CATEGORIES=	www databases
HOMEPAGE=	http://phppgadmin.sourceforge.net/
REVISION=	1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phppgadmin/}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

MODULES=	lang/php

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/phpPgAdmin
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-pgsql

do-install:
	@cp -Rp ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
