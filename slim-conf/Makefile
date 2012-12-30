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

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

THEME_FILE=	slim.theme \
		panel.png \
		background.jpg

PLIST_SUB+=	PKGNAME="${PKGNAME}"

do-install:
	${INSTALL_DATA} ${FILESDIR}/slim.conf ${PREFIX}/etc/
.for FILE in ${THEME_FILE}
	${INSTALL_DATA} ${FILESDIR}/arkbsd/${FILE} ${PREFIX}/share/slim/themes/arkbsd/
.endfor
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
