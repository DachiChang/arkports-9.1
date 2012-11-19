# New ports collection makefile for:	webcamd-conf
# Date created:				2012-10-16
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	webcamd-conf
PORTVERSION=	3.7.0.4
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Webcamd configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

OPT_PORT=	webcamd

PLIST_SUB+=	OPT_PORT_PATH="${PORT_DBDIR}/${OPT_PORT}" \
		PKGNAME="${PKGNAME}"

do-install:
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}
	${MKDIR} ${PORT_DBDIR}/${OPT_PORT}
	${INSTALL} -m 644 ${FILESDIR}/options ${PORT_DBDIR}/${OPT_PORT}
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
