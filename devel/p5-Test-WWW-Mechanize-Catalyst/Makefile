# $OpenBSD: Makefile,v 1.12 2015/01/21 14:27:59 sthen Exp $

COMMENT=        Test-WWW-Mechanize extension for catalyst

MODULES=	cpan
DISTNAME=	Test-WWW-Mechanize-Catalyst-0.56
REVISION=	0
CATEGORIES=     devel www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-WWW-Mechanize>=1.14 \
		devel/p5-Moose \
		devel/p5-namespace-clean \
		www/p5-Catalyst-Runtime \
		www/p5-libwww \
		www/p5-WWW-Mechanize
TEST_DEPENDS=devel/p5-Test-Exception \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
