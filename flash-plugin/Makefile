# New ports collection makefile for:	flash-plugin
# Date created:				2012-11-1
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	flash-plugin
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Web flash plugin installer

RUN_DEPENDS=	nspluginwrapper>=0:${PORTSDIR}/www/nspluginwrapper \
		linux-f10-flashplugin>=0:${PORTSDIR}/www/linux-f10-flashplugin11

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

do-install:
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}

post-install:
	${MKDIR} ${PREFIX}/lib/browser_plugins
	${LOCALBASE}/bin/nspluginwrapper -a -v -i

.include <bsd.port.mk>
