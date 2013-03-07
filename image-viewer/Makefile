# New ports collection makefile for:	image-viewer
# Date created:				2012-03-08
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	image-viewer
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Image viewer

RUN_DEPENDS=	ark-gpicview-conf>=0:${PORTSDIR}/arkports/gpicview-conf \
		gpicview>=0:${PORTSDIR}/graphics/gpicview

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

post-install:
	@-update-desktop-database

.include <bsd.port.mk>
