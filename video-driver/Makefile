# New ports collection makefile for:	video-driver
# Date created:				2012-12-24
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	video-driver
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Video driver

RUN_DEPENDS=	xf86-video-vesa>=0:${PORTSDIR}/x11-drivers/xf86-video-vesa
.if defined(XORG_VIDEO_DRIVER)
.if ${XORG_VIDEO_DRIVER:Mnvidia}
RUN_DEPENDS+=	ark-nvidia-driver-conf>=0:${PORTSDIR}/arkports/nvidia-driver-conf \
		nvidia-driver>=0:${PORTSDIR}/x11/nvidia-driver
.endif
.if ${XORG_VIDEO_DRIVER:Mnew_intel} || ${XORG_VIDEO_DRIVER:Mold_intel}
RUN_DEPENDS+=	xf86-video-intel>=0:${PORTSDIR}/x11-drivers/xf86-video-intel
.endif
.endif

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

.include <bsd.port.mk>
