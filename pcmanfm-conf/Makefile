# New ports collection makefile for:	pcmanfm-conf
# Date created:				2012-10-08
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	pcmanfm-conf
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Pcmanfm configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${FILESDIR}/pcmanfm.conf ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}

.include <bsd.port.mk>
