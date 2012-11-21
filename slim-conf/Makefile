# New ports collection makefile for:	slim-conf
# Date created:				2012-10-25
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	slim-conf
PORTVERSION=	1.3.4
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Slim configure files

RESOLUTION=	1024x600 \
		1024x768 \
		1280x1024 \
		1280x800 \
		1280x960 \
		1366x768 \
		1400x1050 \
		1440x900 \
		1600x1200 \
		1600x900 \
		1680x1050 \
		1920x1080 \
		1920x1200

THEME_FILE=	slim.theme \
		panel.png \
		background.jpg

NO_WRKSUBDIR=	yes
NO_BUILD=	yes
PLIST_SUB+=	PKGNAME="${PKGNAME}"

do-install:
	${INSTALL_DATA} ${FILESDIR}/slim.conf ${PREFIX}/etc/
	${MKDIR} ${PREFIX}/share/slim/themes/arkbsd/resolution_background
.for FILE in ${THEME_FILE}
	${INSTALL_DATA} ${FILESDIR}/arkbsd/${FILE} ${PREFIX}/share/slim/themes/arkbsd/
.endfor
.for FILE in ${RESOLUTION}
	${INSTALL_DATA} ${FILESDIR}/arkbsd/resolution_background/${FILE}.jpg ${PREFIX}/share/slim/themes/arkbsd/resolution_background/
.endfor
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
