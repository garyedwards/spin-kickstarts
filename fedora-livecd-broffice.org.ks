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

# Remove animated background
-laughlin-backgrounds-animated*

# Drop OpenOffice.org in favor of BrOffice.org
-openoffice.org-*
broffice.org-*

# Include some additional packages
java-1.6.0-openjdk
java-1.6.0-openjdk-plugin
vino
gimp

# We won't use these Asian fonts
-lklug-fonts
-sil-abyssinica-fonts
-sil-padauk-fonts
-jomolhari-fonts
-lohit-*
-baekmuk-*
-vlgothic-fonts-*
-un-*
-samyak-fonts-*
-sarai-fonts
-stix-fonts
-cjkuni-*
-hanazono-fonts
-thai-*
-smc-meera-fonts
-ipa-pgothic-fonts
-kacst-*
-khmeros-base-fonts
-paktype-*
-paratype-pt-sans-fonts
-wqy-zenhei-fonts

# remove unnecessary input methods
-@input-methods
-m17n*
-scim*
-iok
-anthy
-kasumi
-libchewing

# include only the input methods we really need
ibus
im-chooser
gtk2-immodules

%end

%post
cat >> /etc/rc.d/init.d/livesys << EOF

# Since we aren't including the animated backgrounds we should use the plain one.
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -t str -s /desktop/gnome/background/picture_filename /usr/share/backgrounds/laughlin/default/laughlin.xml

EOF
%end
