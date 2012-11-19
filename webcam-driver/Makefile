# New ports collection makefile for:	webcam-driver
# Date created:				2012-10-16
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	webcam-driver
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Webcam driver

RUN_DEPENDS=	ark-webcamd-conf>=0:${PORTSDIR}/arkports/webcamd-conf \
		webcamd>=0:${PORTSDIR}/multimedia/webcamd

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

.include <bsd.port.mk>
