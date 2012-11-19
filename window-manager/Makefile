# New ports collection makefile for:	window-manager
# Date created:				2012-10-11
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	window-manager
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Window manager

RUN_DEPENDS=	ark-openbox-conf>=0:${PORTSDIR}/arkports/openbox-conf \
		openbox>=0:${PORTSDIR}/x11-wm/openbox \
		ark-openbox-menu>=0:${PORTSDIR}/arkports/openbox-menu \
		ark-gui-themes>=0:${PORTSDIR}/arkports/gui-themes \
		ark-gui-fonts>=0:${PORTSDIR}/arkports/gui-fonts

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

.include <bsd.port.mk>
