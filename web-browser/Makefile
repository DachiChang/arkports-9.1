# New ports collection makefile for:	web-browser
# Date created:				2012-11-07
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	web-browser
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Web browser

RUN_DEPENDS=	ark-firefox-conf>=0:${PORTSDIR}/arkports/chromium-conf \
		chromium>=0:${PORTSDIR}/www/chromium \
		ark-flash-plugin>=0:${PORTSDIR}/arkports/flash-plugin

USE_GNOME=	desktopfileutils

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

post-install:
	@-update-desktop-database

.include <bsd.port.mk>
