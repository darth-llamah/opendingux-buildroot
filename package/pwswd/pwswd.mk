#############################################################
#
# pwswd
#
#############################################################
PWSWD_VERSION = master
PWSWD_SITE = git://github.com/darth-llamah/pwswd.git
PWSWD_DEPENDENCIES = alsa-lib libpng

define PWSWD_BUILD_CMDS
	$(MAKE) CROSS="$(TARGET_CROSS)" -C $(@D)
endef

define PWSWD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/pwswd $(TARGET_DIR)/usr/sbin/pwswd
	$(INSTALL) -D -m 0644 $(@D)/template.conf $(TARGET_DIR)/etc/pwswd.conf
	$(INSTALL) -D -m 0755 package/pwswd/S30pwswd $(TARGET_DIR)/etc/init.d/S30pwswd
endef

$(eval $(call GENTARGETS,package,pwswd))
