# New ports collection makefile for:	video-player
# Date created:				2013-03-29
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	video-player
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Video player

RUN_DEPENDS=	ark-mplayer2-conf>=0:${PORTSDIR}/arkports/mplayer2-conf \
		mplayer2>=0:${PORTSDIR}/multimedia/mplayer2

USE_GNOME=	desktopfileutils

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

post-install:
	@-update-desktop-database

.include <bsd.port.mk>
