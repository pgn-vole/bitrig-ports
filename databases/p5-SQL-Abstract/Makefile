# $OpenBSD: Makefile,v 1.12 2015/01/03 06:36:12 afresh1 Exp $

COMMENT =	generate SQL from Perl data structures

MODULES =	cpan
DISTNAME =	SQL-Abstract-1.81
CATEGORIES =	databases

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_ARGS +=	--skipdeps

RUN_DEPENDS =	devel/p5-Hash-Merge>=0.12 \
		devel/p5-MRO-Compat>=0.12 \
		devel/p5-Moo>=1.004002

TEST_DEPENDS =	devel/p5-Test-Deep>=0.101 \
		devel/p5-Test-Exception>=0.31 \
		devel/p5-Test-Warn>=0

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	databases/p5-DBIx-Class

.include <bsd.port.mk>
