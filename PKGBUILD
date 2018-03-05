pkgbase=jflap
pkgname=jflap
pkgver=7.0
pkgrel=1
url='http://www.jflap.org/'
arch=('any')
pkgdesc='JFLAP is a package of graphical tools which can be used as an aid in learning the basic concepts of Formal Languages and Automata Theory.'
license=('unknown')
depends=('java-runtime')
source=("http://www.jflap.org/jflaptmp/may15-2011/withoutSource/JFLAP.jar")
sha256sums=('af13051ce5066986c9508245c3ebff4afb6d976e5e4b829970d86e5da4a5177b')

prepare() {
    mkdir -p "${srcdir}/bin"
    cp ../bin/* "${srcdir}/bin"

    unlink JFLAP.jar
    mv ../JFLAP.jar .
}

package() {
    cd "$srcdir"

    install -d "${pkgdir}"/{opt/${pkgname}/,usr}
    install -d "${pkgdir}"/opt/${pkgname}/{bin,assets}
    install -d "${pkgdir}/usr/bin"

    mv "DOCS" "${pkgdir}/opt/${pkgbase}/docs"
    mv "JFLAP.jar" "${pkgdir}/opt/${pkgbase}/bin/jflap.jar"
    mv "LICENSE" "${pkgdir}/opt/${pkgbase}/"

    mv bin/* "${pkgdir}/opt/${pkgbase}/bin"
    mv MEDIA/about.png "${pkgdir}/opt/${pkgbase}/assets/splash.png"

    ln -s "/opt/${pkgname}/bin/${pkgname}.sh" "${pkgdir}/usr/bin/${pkgname}"
}
