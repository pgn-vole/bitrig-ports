# $OpenBSD: Makefile,v 1.23 2014/11/10 01:21:45 afresh1 Exp $

SHARED_ONLY =	Yes

COMMENT =	recursively copy Perl datatypes

MODULES =	cpan
DISTNAME =	Clone-0.37
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

TEST_DEPENDS =	devel/p5-Taint-Runtime

.include <bsd.port.mk>
