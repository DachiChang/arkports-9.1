# New ports collection makefile for:	compton
# Date created:				2013-01-26
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	compton
PORTVERSION=	${GITVERSION}
CATEGORIES=	arkports
MASTER_SITES=	https://github.com/${GITHUB_USER}/${PORTNAME}/tarball/${GITVERSION}/
DISTNAME=	${GITHUB_USER}-${PORTNAME}-${GITVERSION}

MAINTAINER=	femc7488@gmail.com
COMMENT=	A compositor for X11

BUILD_DEPENDS=	asciidoc:${PORTSDIR}/textproc/asciidoc
LIB_DEPENDS=	config:${PORTSDIR}/devel/libconfig \
		pcre:${PORTSDIR}/devel/pcre \
		drm:${PORTSDIR}/graphics/libdrm \
		dbus-1.3:${PORTSDIR}/devel/dbus

USE_XORG=	x11 xcomposite xfixes xdamage xrender xext xrandr
USE_GL=		gl
USE_GMAKE=	yes
USE_PKGCONFIG=	yes

MAKE_ARGS=	NO_VSYNC_DRM=no \
		COMPTON_VERSION=git-${GITVERSION}-fbsd \
		DOCDIR=${DOCSDIR} \
		MANDIR=${MANPREFIX}/man/man1
FETCH_ARGS=	-pRr
ALL_TARGET=	compton

GITHUB_USER=	chjj
GITVERSION=	2182505

MAN1=		compton.1 compton-trans.1

.include <bsd.port.mk>