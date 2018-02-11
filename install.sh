#! /bin/sh

# Select the different configurations to install
SELECT=$(whiptail --title "mdebian-iut" --checklist --separate-output \
"Choose custom configurations for IUT :" 20 78 6 \
"apt" "Configure apt" OFF \
"banner" "Configure banners" ON \
"gnome" "Configure Gnome" ON \
"ntp" "Configure ntp" OFF \
"proxy" "Configure the proxy" ON \
3>&1 1>&2 2>&3)

# No option selected or canceled
[ "$SELECT" ] || exit 1

# Define the package list
PKG=""
for I in $SELECT; do
	PKG=$PKG" mdebian-iut-$I*.deb"
done

# Install the packages
sudo dpkg -i $PKG

# Install the dependencies
sudo apt -f install
