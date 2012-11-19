# New ports collection makefile for:	message-notify
# Date created:				2012-10-05
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	message-notify
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	On screen message notify

RUN_DEPENDS=	ark-xfce4-notifyd-conf>=0:${PORTSDIR}/arkports/xfce4-notifyd-conf \
		xfce4-notifyd>=0:${PORTSDIR}/deskutils/xfce4-notifyd \
		ark-gui-themes>=0:${PORTSDIR}/arkports/gui-themes

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

.include <bsd.port.mk>
