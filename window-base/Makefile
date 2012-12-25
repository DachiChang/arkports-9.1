# New ports collection makefile for:	window-base
# Date created:				2012-12-24
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	window-base
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Window system base

RUN_DEPENDS=	ark-xorg-minimal-conf>=0:${PORTSDIR}/arkports/xorg-minimal-conf \
		xorg-fonts>=0:${PORTSDIR}/x11-fonts/xorg-fonts \
		xorg-minimal>=0:${PORTSDIR}/x11/xorg-minimal \
		ark-video-driver>=0:${PORTSDIR}/arkports/video-driver \
		ark-dbus-conf>=0:${PORTSDIR}/arkports/dbus-conf \
		dbus>=0:${PORTSDIR}/devel/dbus \
		xauth>=0:${PORTSDIR}/x11/xauth \
		xinit>=0:${PORTSDIR}/x11/xinit \
		xrandr>=0:${PORTSDIR}/x11/xrandr \
		xkill>=0:${PORTSDIR}/x11/xkill \
		xset>=0:${PORTSDIR}/x11/xset \
		setxkbmap>=0:${PORTSDIR}/x11/setxkbmap \
		xmodmap>=0:${PORTSDIR}/x11/xmodmap \
		xbacklight>=0:${PORTSDIR}/x11/xbacklight \
		xlsclients>=0:${PORTSDIR}/x11/xlsclients \
		xhost>=0:${PORTSDIR}/x11/xhost \
		xdriinfo>=0:${PORTSDIR}/x11/xdriinfo \
		xdpyinfo>=0:${PORTSDIR}/x11/xdpyinfo \
		xwininfo>=0:${PORTSDIR}/x11/xwininfo \
		xprop>=0:${PORTSDIR}/x11/xprop \
		xvinfo>=0:${PORTSDIR}/x11/xvinfo \
		xev>=0:${PORTSDIR}/x11/xev

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

.include <bsd.port.mk>
