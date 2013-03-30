# New ports collection makefile for:	deadbeef-conf
# Date created:				2013-03-30
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	deadbeef-conf
PORTVERSION=	0.5.5
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Deadbeef configure files

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

OPT_PORT=	deadbeef
PATCH_PORT=	audio/deadbeef

PLIST_SUB+=	OPT_PORT_PATH="${PORT_DBDIR}/${OPT_PORT}"
PLIST_SUB+=	PATCH_PORT_PATH="${PORTSDIR}/${PATCH_PORT}"

do-install:
	${MKDIR} ${EXAMPLESDIR}
	(cd ${FILESDIR}/config; \
		${FIND} . -type d -exec ${MKDIR} ${EXAMPLESDIR}/\{} \; ;\
		${FIND} . -type f -exec ${INSTALL_DATA} \{} ${EXAMPLESDIR}/\{} \;)
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}
	${MKDIR} ${PORTSDIR}/${PATCH_PORT}/files
	${INSTALL} -m 644 ${FILESDIR}/deadbeef.desktop ${PORTSDIR}/${PATCH_PORT}/files/patch-deadbeef.desktop.in
	${MKDIR} ${PORT_DBDIR}/${OPT_PORT}
	${INSTALL} -m 644 ${FILESDIR}/options ${PORT_DBDIR}/${OPT_PORT}

.include <bsd.port.mk>
