# fedora-livecd-broffice.ks
#
# Description:
# - Provides the legal brand "BrOffice.org" for OpenOffice.org in Brazil
#
# Maintainer:
# - Igor Pires Soares <igor at fedoraproject.org>


%include fedora-livecd-desktop.ks

lang pt_BR.UTF-8
keyboard br-abnt2
timezone America/Sao_Paulo


%packages --instLangs en_US:pt_BR

# L10n packages
@brazilian-support
hunspell-pt

# To avoid double functionality we will drop abiword and gnumeric and include BrOffice.org
-abiword
-gnumeric
-planner
broffice.org-*

# Include some desktop packages
@java
totem-xine
vino
gnome-games
system-config-display
brasero
bitstream-vera-*

# We won't use these Asian fonts
-lklug-fonts
-abyssinica-fonts
-jomolhari-fonts
-lohit-*
-kacst-fonts
-paktype-fonts
-baekmuk-*
-vlgothic-fonts-*
-padauk-fonts
-un-*
-samyak-fonts-*
-sarai-fonts
-stix-fonts
-cjkuni-*
-hanazono-fonts
-thai-*
-smc-meera-fonts

# remove input methods
-@input-methods
-m17n*
-scim*
-iok
-anthy
-kasumi
-libchewing
-ibus-*

%end

