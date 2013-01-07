# New ports collection makefile for:	firefox-conf
# Date created:				2012-11-07
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	firefox-conf
PORTVERSION=	17.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Firefox configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

OPT_PORT=	firefox

PLIST_SUB+=	OPT_PORT_PATH="${PORT_DBDIR}/${OPT_PORT}"

do-install:
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${FILESDIR}/userContent.css ${EXAMPLESDIR}
	${INSTALL_DATA} ${FILESDIR}/profiles.ini ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}
	${MKDIR} ${PORT_DBDIR}/${OPT_PORT}
	${INSTALL} -m 644 ${FILESDIR}/options ${PORT_DBDIR}/${OPT_PORT}

.include <bsd.port.mk>
