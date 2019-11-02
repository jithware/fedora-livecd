# fedora-livecd
This documentation describes how to build a custom [fedora spin](https://spins.fedoraproject.org/).

If you haven't already done so, clone the repo:
```sh
git clone https://github.com/jithware/twitch-content.git
cd twitch-content/fedora-livecd
```

On your existing Fedora distribution, install [livecd-tools](https://github.com/livecd-tools/livecd-tools):
```sh
sudo dnf install livecd-tools spin-kickstarts
```
Build an x86_64 Fedora 30 development environment [live iso image](https://fedoraproject.org/wiki/LiveOS_image):
```sh
export ARCH=x86_64 FEDORA=30 BUILD=1
setarch $ARCH sudo livecd-creator --debug -c fedora-dev.ks --cache=/var/cache/livecd --releasever=$FEDORA -f Fedora-Dev-Live-$ARCH-$FEDORA-$BUILD
```

For additional info, see the [Fedora Docs](https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/).