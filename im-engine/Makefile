# New ports collection makefile for:	im-engine
# Date created:				2012-07-20
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	im-engine
PORTVERSION=	1.01
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Metaport of input method

RUN_DEPENDS=	${LOCALBASE}/libexec/ibus-engine-table:${PORTSDIR}/textproc/ibus-table \
		${LOCALBASE}/libexec/ibus-engine-chewing:${PORTSDIR}/chinese/ibus-chewing

NO_BUILD=	yes

do-install:
	${INSTALL_DATA} ${FILESDIR}/boshiamy/liu.db ${PREFIX}/share/ibus-table/tables/
	${INSTALL_DATA} ${FILESDIR}/boshiamy/liu.png ${PREFIX}/share/ibus-table/icons/

.include <bsd.port.mk>
