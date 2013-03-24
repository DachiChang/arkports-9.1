# New ports collection makefile for:	chromium-conf
# Date created:				2013-03-24
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	chromium-conf
PORTVERSION=	23.0.1271.91
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	chromium configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

OPT_PORT=	chromium

PLIST_SUB+=	OPT_PORT_PATH="${PORT_DBDIR}/${OPT_PORT}"

do-install:
	${MKDIR} ${PORT_DBDIR}/${OPT_PORT}
	${INSTALL} -m 644 ${FILESDIR}/options ${PORT_DBDIR}/${OPT_PORT}

.include <bsd.port.mk>
