# New ports collection makefile for:	xorg-minimal-conf
# Date created:				2012-11-28
# Whom:					Dachi Chang <femc7488@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	xorg-minimal-conf
PORTVERSION=	7.5.2
CATEGORIES=	arkports
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	femc7488@gmail.com
COMMENT=	X window system configure

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

CONFIG_FILE=	xserver-setting

OPTIONS_DEFINE=		NVIDIA INTEL
OPTIONS_SINGLE=		INTEL
OPTIONS_SINGLE_INTEL=	NEW_INTEL OLD_INTEL
OPTIONS_DEFAULT=	INTEL NEW_INTEL

NVIDIA_DESC=		Nvidia video driver
INTEL_DESC=		Intel video driver
NEW_INTEL_DESC=		with KMS support
OLD_INTEL_DESC=		not support KMS

PLIST_SUB+=	PKGNAME="${PKGNAME}"

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNEW_INTEL}
DRIVER_CONF+=	new_intel
.endif

.if ${PORT_OPTIONS:MOLD_INTEL}
DRIVER_CONF+=	old_intel
.endif

.if ${PORT_OPTIONS:MNVIDIA}
DRIVER_CONF+=	nvidia
.endif

do-install:
	${MKDIR} ${EXAMPLESDIR}
.for FILE in ${CONFIG_FILE}
	${INSTALL_DATA} ${FILESDIR}/${FILE} ${EXAMPLESDIR}
.endfor
	${INSTALL_SCRIPT} ${FILESDIR}/install.sh ${EXAMPLESDIR}
	PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} DO-INSTALL ${DRIVER_CONF}

.include <bsd.port.mk>
