pkgname=dmenu
pkgver=4.9
pkgrel=1
pkgdesc='A dynamic menu for X'
arch=('i686' 'x86_64' 'armv7h')
license=('MIT')
depends=(libxft)
url=https://tools.suckless.org/dmenu
source=(
    dmenu-4.9.tar.gz
    config.h
)
sha256sums=(
    'SKIP'
    'SKIP'
)
_sourcedir=$pkgname #-$pkgver
_makeopts="--directory=$_sourcedir"

prepare() {
    cd $srcdir/$pkgname #-$pkgver
    sed -i '/tic /d' Makefile
    cp $srcdir/config.h config.h
}

build() {
    #cd $srcdir/$pkgname-$pkgver
    make $_makeopts X11INC=/usr/include/X11 X11LIB=/usr/lib/X11
}

package() {
    cd $srcdir/$pkgname #-$pkgver
    make PREFIX=/usr DESTDIR="$pkgdir" TERMINFO="$pkgdir/usr/share/terminfo" install
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
    install -Dm644 README "$pkgdir/usr/share/doc/$pkgname/README"
}

