# New ports collection makefile for:	pdf-viewer
# Date created:				2012-03-08
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	pdf-viewer
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Pdf viewer

RUN_DEPENDS=	ark-epdfview-conf>=0:${PORTSDIR}/arkports/epdfview-conf \
		epdfview>=0:${PORTSDIR}/graphics/epdfview

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

post-install:
	@-update-desktop-database

.include <bsd.port.mk>
