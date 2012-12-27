# New ports collection makefile for:	nvidia-driver-conf
# Date created:				2012-12-28
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	nvidia-driver-conf
PORTVERSION=	304.60
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Nvidia driver configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes
OPT_PORT=	nvidia-driver
PLIST_SUB+=	OPT_PORT_PATH="${PORT_DBDIR}/${OPT_PORT}" \
		PKGNAME="${PKGNAME}"

do-install:
	${MKDIR} ${PORT_DBDIR}/${OPT_PORT}
	${INSTALL} -m 644 ${FILESDIR}/options ${PORT_DBDIR}/${OPT_PORT}
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
