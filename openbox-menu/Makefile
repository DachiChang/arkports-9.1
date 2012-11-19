# New ports collection makefile for:	openbox-menu
# Date created:				2012-10-10
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	openbox-menu
PORTVERSION=	0.3.6.7
CATEGORIES=	arkports
MASTER_SITES=	http://mimarchlinux.googlecode.com/files/

MAINTAINER=	femc7488@gmail.com
COMMENT=	Openbox menu generator

LICENSE=	GPLv3

LIB_DEPENDS=	menu-cache:${PORTSDIR}/x11/menu-cache

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	gtk20 glib20 gnomemenus

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
