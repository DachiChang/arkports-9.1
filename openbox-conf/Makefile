# New ports collection makefile for:	openbox-conf
# Date created:				2012-10-11
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	openbox-conf
PORTVERSION=	3.5.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Openbox configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${MKDIR} ${EXAMPLESDIR}
	(cd ${FILESDIR}/config; \
		${FIND} . -type d -exec ${MKDIR} ${EXAMPLESDIR}/\{} \; ;\
		${FIND} . -type f -exec ${INSTALL_DATA} \{} ${EXAMPLESDIR}/\{} \;)
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}

.include <bsd.port.mk>
