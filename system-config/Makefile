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

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

PLIST_SUB+=	PKGNAME="${PKGNAME}"

do-install:
	${INSTALL_DATA} ${FILESDIR}/motd /etc/
	${INSTALL_DATA} ${FILESDIR}/adduser.conf /etc/
	${INSTALL_DATA} ${FILESDIR}/ppp.conf.sample /etc/ppp/
	${MKDIR} ${PREFIX}/share/skel
	(cd ${FILESDIR}/dotfiles; \
		${FIND} . -type d -exec ${MKDIR} ${PREFIX}/share/skel/\{} \; ;\
		${FIND} . -type f -exec ${INSTALL_DATA} \{} ${PREFIX}/share/skel/\{} \;)
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
