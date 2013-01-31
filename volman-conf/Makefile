# New ports collection makefile for:	volman-conf
# Date created:				2013-01-31
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	volman-conf
PORTVERSION=	0.7
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Volman configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

PLIST_SUB+=	PKGNAME="${PKGNAME}"

do-install:
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
