# New ports collection makefile for:	wallpaper
# Date created:				2013-03-09
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	wallpaper
PORTVERSION=	0.1
CATEGORIES=	arkports
MASTER_SITES=	https://github.com/${GITHUB_USER}/${PORTNAME}/tarball/${GITVERSION}/
DISTNAME=	${GITHUB_USER}-${PORTNAME}-${GITVERSION}

MAINTAINER=	femc7488@gmail.com
COMMENT=	Simple desktop wallpaper setter

RUN_DEPENDS=	feh>=0:${PORTSDIR}/graphics/feh

USE_GNOME=	desktopfileutils
USE_PYTHON=	yes

FETCH_ARGS=	-pRr
NO_BUILD=	yes

GITHUB_USER=	DachiChang
GITVERSION=	b2a1823

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${MKDIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.desktop ${PREFIX}/share/applications/

post-install:
	@-update-desktop-database

.include <bsd.port.mk>
