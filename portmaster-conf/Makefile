# New ports collection makefile for:	portmaster-conf
# Date created:				2012-10-06
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	portmaster-conf
PORTVERSION=	3.14
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Portmaster configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

PLIST_SUB+=	PKGNAME="${PKGNAME}"

do-install:
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
