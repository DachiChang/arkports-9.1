# New ports collection makefile for:	gui-themes
# Date created:				2012-10-04
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	gui-themes
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	GUI themes

RUN_DEPENDS=	gtk-murrine-engine>=0:${PORTSDIR}/x11-themes/gtk-murrine-engine

CONFLICTS=	*-faenza-[0-9]*

NO_WRKSUBDIR=	yes
NO_BUILD=	yes
INSTALLS_ICONS=	yes

do-install:
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${FILESDIR}/gtkrc ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}
	${MKDIR} ${PREFIX}/share/icons
	${MKDIR} ${PREFIX}/share/themes
	${TAR} -xf ${FILESDIR}/icons.tar.bz2 -C ${PREFIX}/share/icons
	${TAR} -xf ${FILESDIR}/themes.tar.bz2 -C ${PREFIX}/share/themes

.include <bsd.port.mk>
