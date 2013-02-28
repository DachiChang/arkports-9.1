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

PLIST_SUB+=	PKGNAME="${PKGNAME}"

do-install:
	${INSTALL_DATA} ${FILESDIR}/slim.conf ${PREFIX}/etc/
	${MKDIR} ${PREFIX}/share/slim/themes/
	(cd ${FILESDIR}/theme; \
		${FIND} . -type d -exec ${MKDIR} ${PREFIX}/share/slim/themes/\{} \; ;\
		${FIND} . -type f -exec ${INSTALL_DATA} \{} ${PREFIX}/share/slim/themes/\{} \;)
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL

.include <bsd.port.mk>
