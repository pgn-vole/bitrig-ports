# $OpenBSD: Makefile,v 1.16 2015/01/05 11:41:00 giovanni Exp $

COMMENT=	Sender-Policy-Framework queries in Python

MODPY_EGG_VERSION=2.0.11
DISTNAME=	pyspf-${MODPY_EGG_VERSION}
PKGNAME=	py-spf-${MODPY_EGG_VERSION}
REVISION=	0
CATEGORIES=	mail

HOMEPAGE=	http://bmsi.com/python/milter.html

# Python
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pymilter/}

MODULES=        lang/python

BUILD_DEPENDS=	net/py-dns

RUN_DEPENDS=	mail/py-authres

TEST_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH} \
		textproc/py-yaml \
		net/py-ipaddr

do-test:
	@cd ${WRKSRC}/test && ${MODPY_BIN} testspf.py

.include <bsd.port.mk>
