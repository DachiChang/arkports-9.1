# New ports collection makefile for:	ibus-table-conf
# Date created:				2012-10-02
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	ibus-table-conf
PORTVERSION=	1.3.9.20110827
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Ibus table configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${MKDIR} ${PREFIX}/share/ibus-table/icons
	${MKDIR} ${PREFIX}/share/ibus-table/tables
	${INSTALL_DATA} ${FILESDIR}/boshiamy/liu.db ${PREFIX}/share/ibus-table/tables/
	${INSTALL_DATA} ${FILESDIR}/boshiamy/liu.png ${PREFIX}/share/ibus-table/icons/

.include <bsd.port.mk>
