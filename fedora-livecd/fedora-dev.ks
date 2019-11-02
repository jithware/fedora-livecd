# Kickstart file for creating a custom fedora development environment livecd

# Base desktop (see /usr/share/spin-kickstarts/fedora-live-* for other available desktops)
%include /usr/share/spin-kickstarts/fedora-live-cinnamon.ks

# Custom system 
part / --size 10240
selinux --disabled
services --enabled=sshd

# Additional repos
repo --name=rpmfusion-free --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch
repo --name=rpmfusion-nonfree --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch
repo --name=google-chrome --baseurl=http://dl.google.com/linux/chrome/rpm/stable/$basearch
repo --name=vscode --baseurl=https://packages.microsoft.com/yumrepos/vscode

%packages

# Additional packages
@c-development
@development-tools
@eclipse
@java-development
code
cmake
cmake-gui
golang
google-chrome-stable

# Remove some default packages
-@libreoffice
-brasero
-claws-mail
-exaile
-filezilla
-firefox
-gstreamer1-plugins-ugly
-hexchat
-hplip
-parole
-pidgin
-sane*
-simple-scan
-thunderbird
-xawtv
-xfburn
-xplayer

%end
