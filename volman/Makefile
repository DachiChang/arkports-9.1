# New ports collection makefile for:	volman
# Date created:				2013-01-31
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	volman
PORTVERSION=	0.7
CATEGORIES=	arkports
MASTER_SITES=	https://github.com/${GITHUB_USER}/${PORTNAME}/tarball/${GITVERSION}/
DISTNAME=	${GITHUB_USER}-${PORTNAME}-${GITVERSION}

MAINTAINER=	femc7488@gmail.com
COMMENT=	FreeBSD specific volume manager

USE_RC_SUBR=	volmand

FETCH_ARGS=	-pRr
VM_SUB_FILES=	vmount volmand

GITHUB_USER=	DachiChang
GITVERSION=	efad618

do-build:
.for file in ${VM_SUB_FILES}
	${SED} -e 's#%%PREFIX%%#${PREFIX}#g' ${WRKSRC}/${file}.in > ${WRKSRC}/${file}
.endfor

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/volmand ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/vmount ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/volman.conf ${PREFIX}/etc/volman.conf.sample

.include <bsd.port.mk>
