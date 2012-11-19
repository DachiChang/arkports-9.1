# New ports collection makefile for:	system-config
# Date created:				2012-08-26
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	system-config
PORTVERSION=	1.0
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	Optimiz system configure

SKEL_FILE=	dot.cshrc dot.login_conf

NO_WRKSUBDIR=	yes
NO_BUILD=	yes
PLIST_SUB+=	PKGNAME="${PKGNAME}"

do-install:
	${INSTALL_DATA} ${FILESDIR}/motd /etc/
	${INSTALL_DATA} ${FILESDIR}/adduser.conf /etc/
	${INSTALL_DATA} ${FILESDIR}/ppp.conf.sample /etc/ppp/
	${MKDIR} ${PREFIX}/share/skel
.for FILE in ${SKEL_FILE}
	${INSTALL} -m 644 ${FILESDIR}/dotfiles/${FILE} ${PREFIX}/share/skel/
.endfor
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
