# New ports collection makefile for:	dbus-conf
# Date created:				2012-12-25
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	dbus-conf
PORTVERSION=	1.4.14
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Dbus configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

PLIST_SUB+=	PKGNAME="${PKGNAME}"

do-install:
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
