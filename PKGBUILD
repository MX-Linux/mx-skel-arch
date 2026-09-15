# Maintainer: Adrian
pkgname=mx-skel-fish-config
pkgver=26.09
pkgrel=1
pkgdesc="MX Linux skeleton fish shell configuration"
arch=('any')
url='https://github.com/mxlinux'
license=('MIT')
depends=('fish')
optdepends=('mx-conky-data: provides the conky-startup.sh referenced by the autostart entry')
source=('conky.desktop')
sha256sums=('SKIP')

package() {
    cd "$srcdir"

    # Create the target directory
    install -dm755 "$pkgdir/etc/skel/.config"

    # Install the fish configuration tree
    cp -r "$startdir/fish" "$pkgdir/etc/skel/.config/"

    # Normalise permissions regardless of the checkout's umask
    find "$pkgdir/etc/skel/.config/fish" -type d -exec chmod 755 {} +
    find "$pkgdir/etc/skel/.config/fish" -type f -exec chmod 644 {} +

    # fish writes fish_variables 0600 and git cannot store that mode; restore it
    chmod 600 "$pkgdir/etc/skel/.config/fish/fish_variables"

    # git cannot track the empty themes/ dir, so create it explicitly; otherwise
    # a local build (dir present on disk) and an OBS build would differ
    install -dm755 "$pkgdir/etc/skel/.config/fish/themes"

    # Create autostart directory
    install -dm755 "$pkgdir/etc/skel/.config/autostart"

    # Install desktop files to autostart
    install -m644 conky.desktop "$pkgdir/etc/skel/.config/autostart/"
}
