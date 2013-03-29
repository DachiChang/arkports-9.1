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

PATCH_PORT=	x11-fm/pcmanfm

PLIST_SUB+=	PATCH_PORT_PATH="${PORTSDIR}/${PATCH_PORT}"

do-install:
	${MKDIR} ${EXAMPLESDIR}
	(cd ${FILESDIR}/config; \
		${FIND} . -type d -exec ${MKDIR} ${EXAMPLESDIR}/\{} \; ;\
		${FIND} . -type f -exec ${INSTALL_DATA} \{} ${EXAMPLESDIR}/\{} \;)
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}
	${MKDIR} ${PORTSDIR}/${PATCH_PORT}/files
	${INSTALL} -m 644 ${FILESDIR}/pcmanfm.desktop ${PORTSDIR}/${PATCH_PORT}/files/patch-pcmanfm.desktop

.include <bsd.port.mk>
