# New ports collection makefile for:	im-engine
# Date created:				2012-07-20
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	im-engine
PORTVERSION=	1.02
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Metaport of input method

RUN_DEPENDS=	${LOCALBASE}/libexec/ibus-engine-chewing:${PORTSDIR}/chinese/ibus-chewing \
		${LOCALBASE}/libexec/ibus-engine-table:${PORTSDIR}/textproc/ibus-table

NO_BUILD=	yes

do-install:
	${MKDIR} ${PREFIX}/share/ibus-table/icons
	${MKDIR} ${PREFIX}/share/ibus-table/tables
	${INSTALL_DATA} ${FILESDIR}/boshiamy/liu.db ${PREFIX}/share/ibus-table/tables/
	${INSTALL_DATA} ${FILESDIR}/boshiamy/liu.png ${PREFIX}/share/ibus-table/icons/

.include <bsd.port.mk>
