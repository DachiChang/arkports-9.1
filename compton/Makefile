# New ports collection makefile for:	compton
# Date created:				2013-01-26
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	compton
PORTVERSION=	20130206
CATEGORIES=	arkports
MASTER_SITES=	https://github.com/${GITHUB_USER}/${PORTNAME}/tarball/${GITVERSION}/
DISTNAME=	${GITHUB_USER}-${PORTNAME}-${GITVERSION}

MAINTAINER=	femc7488@gmail.com
COMMENT=	A compositor for X11

BUILD_DEPENDS=	asciidoc:${PORTSDIR}/textproc/asciidoc \
		${LOCALBASE}/share/xml/docbook/4.5/docbookx.dtd:${PORTSDIR}/textproc/docbook-xml-450
LIB_DEPENDS=	config:${PORTSDIR}/devel/libconfig \
		pcre:${PORTSDIR}/devel/pcre

USE_XORG=	x11 xcomposite xfixes xdamage xrender xext xrandr
USE_GMAKE=	yes
USE_PKGCONFIG=	yes

MAKE_ARGS=	COMPTON_VERSION=git-${GITVERSION}-fbsd
ALL_TARGET=	compton

FETCH_ARGS=	-pRr
GITHUB_USER=	chjj
GITVERSION=	2182505

MAN1=		compton.1 compton-trans.1

.include <bsd.port.mk>
