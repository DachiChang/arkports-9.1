# New ports collection makefile for:	terminal-multiplexer
# Date created:				2012-10-16
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	terminal-multiplexer
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Terminal multiplexer

RUN_DEPENDS=	ark-tmux-conf>=0:${PORTSDIR}/arkports/tmux-conf \
		tmux>=0:${PORTSDIR}/sysutils/tmux

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

.include <bsd.port.mk>
