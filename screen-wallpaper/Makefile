# New ports collection makefile for:	screen-wallpaper
# Date created:				2013-03-10
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	screen-wallpaper
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Screen wallpaper

RUN_DEPENDS=	ark-wallpaper-conf>=0:${PORTSDIR}/arkports/wallpaper-conf \
		ark-wallpaper>=0:${PORTSDIR}/arkports/wallpaper

USE_GNOME=	desktopfileutils

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

post-install:
	@-update-desktop-database

.include <bsd.port.mk>
