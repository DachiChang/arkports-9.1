# New ports collection makefile for:	compton
# Date created:				2013-01-26
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	compton
PORTVERSION=	20130312
CATEGORIES=	arkports
MASTER_SITES=	https://github.com/${GITHUB_USER}/${PORTNAME}/tarball/${GITVERSION}/
DISTNAME=	${GITHUB_USER}-${PORTNAME}-${GITVERSION}

MAINTAINER=	femc7488@gmail.com
COMMENT=	A compositor for X11

BUILD_DEPENDS=	asciidoc:${PORTSDIR}/textproc/asciidoc \
		docbook-xml=4.5:${PORTSDIR}/textproc/docbook-xml-450
LIB_DEPENDS=	config:${PORTSDIR}/devel/libconfig \
		pcre:${PORTSDIR}/devel/pcre

USE_XORG=	x11 xcomposite xfixes xdamage xrender xext xrandr
USE_GMAKE=	yes
USE_PKGCONFIG=	yes

MAKE_ARGS=	COMPTON_VERSION=git-${GITVERSION}-fbsd
ALL_TARGET=	compton

FETCH_ARGS=	-pRr
GITHUB_USER=	chjj
GITVERSION=	4bc3de8

.if !defined(NOPORTDOCS)
PORTDOCS=	README.md compton.sample.conf cdbus-driver.sh
MAN1=		compton.1 compton-trans.1
MAKE_ARGS+=	DOCDIR=${DOCSDIR} \
		MANDIR=${MANPREFIX}/man/man1
.endif

OPTIONS_DEFINE=	DRM OPENGL DBUS
OPTIONS_DEFAULT=DRM OPENGL

DRM_DESC=	DRM Vsync Support
OPENGL_DESC=	OpenGL Vsync Support
DBUS_DESC=	D-Bus Support

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDRM}
LIB_DEPENDS+=	drm:${PORTSDIR}/graphics/libdrm
.else
MAKE_ARGS+=	NO_VSYNC_DRM=yes
.endif

.if ${PORT_OPTIONS:MOPENGL}
USE_GL=		gl
.else
MAKE_ARGS+=	NO_VSYNC_OPENGL=yes
.endif

.if ${PORT_OPTIONS:MDBUS}
LIB_DEPENDS+=	dbus-1:${PORTSDIR}/devel/dbus
.else
MAKE_ARGS+=	NO_DBUS=yes
.endif

.include <bsd.port.mk>
