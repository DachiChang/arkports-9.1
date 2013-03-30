# New ports collection makefile for:	audio-player
# Date created:				2013-03-30
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	audio-player
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Audio player

RUN_DEPENDS=	ark-deadbeef-conf>=0:${PORTSDIR}/arkports/deadbeef-conf \
		deadbeef>=0:${PORTSDIR}/audio/deadbeef

USE_GNOME=	desktopfileutils

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

post-install:
	@-update-desktop-database

.include <bsd.port.mk>
