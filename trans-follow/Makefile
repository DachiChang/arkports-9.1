# New ports collection makefile for:	trans-follow
# Date created:				2012-10-18
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	trans-follow
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	https://github.com/${GITHUB_USER}/${PORTNAME}/tarball/${GITVERSION}/
DISTNAME=	${GITHUB_USER}-${PORTNAME}-${GITVERSION}

MAINTAINER=	femc7488@gmail.com
COMMENT=	Window transparency effect follow by focus

RUN_DEPENDS=	transset-df>=0:${PORTSDIR}/x11-wm/transset-df
LIB_DEPENDS=	xcb-icccm:${PORTSDIR}/x11/xcb-util-wm

GITHUB_USER=	DachiChang
GITVERSION=	f05b880

FETCH_ARGS=	-pRr
USE_GMAKE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
