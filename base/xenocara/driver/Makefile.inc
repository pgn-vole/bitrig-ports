# $OpenBSD: Makefile.inc,v 1.1.1.1 2012/11/01 09:58:05 espie Exp $

MODULES += base/xenocara

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

XDEPS += xserver
