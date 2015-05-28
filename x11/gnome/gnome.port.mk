# $OpenBSD: gnome.port.mk,v 1.99 2015/04/03 22:32:27 ajacoutot Exp $
#
# Module for GNOME related ports

.if (defined(GNOME_PROJECT) && defined(GNOME_VERSION))
PORTROACH+=		limitw:1,even
DISTNAME=		${GNOME_PROJECT}-${GNOME_VERSION}
VERSION=		${GNOME_VERSION}
HOMEPAGE?=		https://wiki.gnome.org/
MASTER_SITES?=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX?=		.tar.xz
CATEGORIES+=		x11/gnome
.    if ${NO_BUILD:L} == "no"
MODULES+=		textproc/intltool
USE_GMAKE?=		Yes
.    endif
.endif

.if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
     CONFIGURE_ARGS += ${CONFIGURE_SHARED}
     # https://mail.gnome.org/archives/desktop-devel-list/2011-September/msg00064.html
.    if !defined(AUTOCONF_VERSION) && !defined(AUTOMAKE_VERSION)
         CONFIGURE_ARGS += --disable-maintainer-mode
.    endif
     # If a port needs extra CPPFLAGS, they can just set MODGNOME_CPPFLAGS
     # to the desired value, like -I${X11BASE}/include
     _MODGNOME_cppflags ?= CPPFLAGS="${MODGNOME_CPPFLAGS} -I${LOCALBASE}/include"
     _MODGNOME_ldflags ?= LDFLAGS="${MODGNOME_LDFLAGS} -L${LOCALBASE}/lib"
     CONFIGURE_ENV += ${_MODGNOME_cppflags} \
                      ${_MODGNOME_ldflags}
.endif

# Use MODGNOME_TOOLS to indicate certain tools are needed for building bindings
# or for ensuring documentation is available. If an option is not set, it's
# explicitly disabled.
# Currently supported tools are:
# * desktop-file-utils: Use this if there are .desktop files under
#                       share/applications/. This also requires the following
#                       go in PLIST:
#                       @exec %D/bin/update-desktop-database
#                       @unexec-delete %D/bin/update-desktop-database
# * docbook: Build man pages with docbook.
# * gobject-introspection: Build and enable GObject Introspection data.
# * gtk-update-icon-cache: Enable if there are icon files under share/icons/.
#                          Requires the following goo in PLIST (adapt
#                          $icon-theme accordingly):
#                          @exec %D/bin/gtk-update-icon-cache -q -t %D/share/icons/$icon-theme
#                          @unexec-delete %D/bin/gtk-update-icon-cache -q -t %D/share/icons/$icon-theme
# * shared-mime-info: Enable if there are .xml files under share/mime/.
#                     Requires the following goo in PLIST:
#                     @exec %D/bin/update-mime-database %D/share/mime
#                     @unexec-delete %D/bin/update-mime-database %D/share/mime
# * vala: Enable vala bindings and/or building from vala source files.
# * yelp: Use this if there are any files under share/gnome/help/
#         or "page" files under share/help/ in the PLIST that are opened
#         with yelp -- gnome-doc-utils is here to make sure we have a
#         dependency on rarian (and legacy scrollkeeper-*) and have
#         access to the gnome-doc-* tools (legacy);
#         same goes with yelp-tools which gives us itstool.

MODGNOME_CONFIGURE_ARGS_gi=--disable-introspection
MODGNOME_CONFIGURE_ARGS_vala=--disable-vala --disable-vala-bindings

.if defined(MODGNOME_TOOLS)
_VALID_TOOLS=desktop-file-utils docbook gobject-introspection \
    gtk-update-icon-cache shared-mime-info vala yelp
.   for _t in ${MODGNOME_TOOLS}
.       if !${_VALID_TOOLS:M${_t}}
ERRORS += "Fatal: unknown MODGNOME_TOOLS option: ${_t}\n(not in ${_VALID_TOOLS})"
.       endif
.   endfor

.   if ${MODGNOME_TOOLS:Mdesktop-file-utils}
        MODGNOME_RUN_DEPENDS+=	devel/desktop-file-utils
        MODGNOME_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/appstream-util;
        MODGNOME_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/desktop-file-validate;
.   endif

.   if ${MODGNOME_TOOLS:Mdocbook}
        MODGNOME_BUILD_DEPENDS+=textproc/docbook-xsl
.   endif

.   if ${MODGNOME_TOOLS:Mgobject-introspection}
        MODGNOME_CONFIGURE_ARGS_gi=--enable-introspection
        MODGNOME_BUILD_DEPENDS+=devel/gobject-introspection
.   endif

.   if ${MODGNOME_TOOLS:Mgtk-update-icon-cache}
        MODGNOME_RUN_DEPENDS+=	x11/gtk+3,-guic
.   endif

.   if ${MODGNOME_TOOLS:Mshared-mime-info}
        MODGNOME_RUN_DEPENDS+=	misc/shared-mime-info
        MODGNOME_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/update-mime-database;
.   endif

.   if ${MODGNOME_TOOLS:Mvala}
        MODGNOME_CONFIGURE_ARGS_vala=--enable-vala --enable-vala-bindings
        MODGNOME_BUILD_DEPENDS+=lang/vala
.   endif

.   if ${MODGNOME_TOOLS:Myelp}
        MODGNOME_BUILD_DEPENDS+=x11/gnome/yelp-tools
        MODGNOME_BUILD_DEPENDS+=x11/gnome/doc-utils
        # automatically try to detect GUI applications
.       if ${MODGNOME_TOOLS:Mdesktop-file-utils}
            MODGNOME_RUN_DEPENDS+=x11/gnome/yelp
.       endif
.   endif
.endif

.if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
CONFIGURE_ARGS+=${MODGNOME_CONFIGURE_ARGS_gi} \
		${MODGNOME_CONFIGURE_ARGS_vala}
.endif

.if defined(MODGNOME_BUILD_DEPENDS)
BUILD_DEPENDS+=		${MODGNOME_BUILD_DEPENDS}
.endif

.if defined(MODGNOME_RUN_DEPENDS)
RUN_DEPENDS+=		${MODGNOME_RUN_DEPENDS}
.endif
