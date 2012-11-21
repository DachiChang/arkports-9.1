# New ports collection makefile for:	xterm-conf
# Date created:				2012-11-14
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	xterm-conf
PORTVERSION=	286
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Xterm configure files

RUN_DEPENDS=	ark-gui-fonts>=0:${PORTSDIR}/arkports/gui-fonts

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

PATCH_PORT=	x11/xterm

PLIST_SUB+=	PATCH_PORT_PATH="${PORTSDIR}/${PATCH_PORT}"

do-install:
	${MKDIR} ${PORTSDIR}/${PATCH_PORT}/files
	${INSTALL} -m 644 ${FILESDIR}/xterm.xpm ${PORTSDIR}/${PATCH_PORT}/files/patch-xterm.xpm

.include <bsd.port.mk>
