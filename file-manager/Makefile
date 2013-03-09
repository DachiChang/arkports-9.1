# New ports collection makefile for:	file-manager
# Date created:				2012-10-08
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	file-manager
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	File manager

RUN_DEPENDS=	ark-libfm-conf>=0:${PORTSDIR}/arkports/libfm-conf \
		ark-pcmanfm-conf>=0:${PORTSDIR}/arkports/pcmanfm-conf \
		libfm>=0:${PORTSDIR}/x11/libfm \
		pcmanfm>=0:${PORTSDIR}/x11-fm/pcmanfm

USE_GNOME=	gnomemenus desktopfileutils

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

post-install:
	@-update-desktop-database

.include <bsd.port.mk>
