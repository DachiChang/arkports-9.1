# New ports collection makefile for:	window-base
# Date created:				2012-12-24
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	window-base
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Window system base

RUN_DEPENDS=	ark-xorg-minimal-conf>=0:${PORTSDIR}/arkports/xorg-minimal-conf \
		xorg-fonts>=0:${PORTSDIR}/x11-fonts/xorg-fonts \
		xorg-minimal>=0:${PORTSDIR}/x11/xorg-minimal \
		ark-video-driver>=0:${PORTSDIR}/arkports/video-driver

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

.include <bsd.port.mk>
