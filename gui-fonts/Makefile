# New ports collection makefile for:	gui-fonts
# Date created:				2012-10-23
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	gui-fonts
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	GUI fonts

RUN_DEPENDS=	fontconfig>=0:${PORTSDIR}/x11-fonts/fontconfig \
		droid-fonts-ttf>=0:${PORTSDIR}/x11-fonts/droid-fonts-ttf 

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${MKDIR} ${EXAMPLESDIR}
	(cd ${FILESDIR}/config; \
		${FIND} . -type d -exec ${MKDIR} ${EXAMPLESDIR}/\{} \; ;\
		${FIND} . -type f -exec ${INSTALL_DATA} \{} ${EXAMPLESDIR}/\{} \;)
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}

post-install:
	${LOCALBASE}/bin/fc-cache -f -s -v

.include <bsd.port.mk>
