# $OpenBSD: Makefile,v 1.8 2015/01/21 14:40:10 sthen Exp $

COMMENT=	perl interface to jabber

MODULES=	cpan
DISTNAME=	Net-Jabber-2.0
REVISION=	1
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Net-XMPP
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
