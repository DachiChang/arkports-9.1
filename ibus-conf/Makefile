# New ports collection makefile for:	ibus-conf
# Date created:				2012-11-18
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	ibus-conf
PORTVERSION=	1.4.1
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	IBus configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

OPT_PORT=	ibus

PLIST_SUB+=	OPT_PORT_PATH="${PORT_DBDIR}/${OPT_PORT}"

do-install:
	${MKDIR} ${PORT_DBDIR}/${OPT_PORT}
	${INSTALL} -m 644 ${FILESDIR}/options ${PORT_DBDIR}/${OPT_PORT}

.include <bsd.port.mk>
