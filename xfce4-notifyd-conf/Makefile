# New ports collection makefile for:	xfce4-notifyd-conf
# Date created:				2012-10-03
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	xfce4-notifyd-conf
PORTVERSION=	0.2.2
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Xfce4-notifyd configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${FILESDIR}/xfce4-notifyd.xml ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}

.include <bsd.port.mk>
