#############################################################
#
# gmenu2x
#
#############################################################
GMENU2X_VERSION = master
GMENU2X_SITE = git://github.com/darth-llamah/gmenu2x.git
GMENU2X_DEPENDENCIES = sdl sdl_gfx libpng
GMENU2X_AUTORECONF = YES
GMENU2X_CONF_OPT = --with-sdl-prefix=$(STAGING_DIR)/usr --enable-platform=spica

$(eval $(call AUTOTARGETS,package,gmenu2x))
