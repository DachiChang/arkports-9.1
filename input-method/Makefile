# New ports collection makefile for:	input-method
# Date created:				2012-10-02
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	input-method
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Input method

RUN_DEPENDS=	ark-ibus-conf>=0:${PORTSDIR}/arkports/ibus-conf \
		ibus>=0:${PORTSDIR}/textproc/ibus \
		ark-ibus-table-conf>=0:${PORTSDIR}/arkports/ibus-table-conf \
		ibus-table>=0:${PORTSDIR}/textproc/ibus-table \
		zh-ibus-chewing>=0:${PORTSDIR}/chinese/ibus-chewing

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${DO_NADA}

.include <bsd.port.mk>
