# Maintainer: Adrian
pkgname=mx-skel-fish-config
pkgver=1.0.0
pkgrel=1
pkgdesc="MX Linux skeleton fish shell configuration"
arch=('any')
license=('MIT')
depends=()
source=('fish.zip')
sha256sums=('SKIP')

package() {
    cd "$srcdir"

    # Extract the zip file, overwriting without prompting
    unzip -oq fish.zip

    # Create the target directory
    install -dm755 "$pkgdir/etc/skel/.config"

    # Move the fish directory to the correct location
    mv fish "$pkgdir/etc/skel/.config/"

    # Set correct permissions for the fish directory
    chmod 755 "$pkgdir/etc/skel/.config/fish"
}