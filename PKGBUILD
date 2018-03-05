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
sha256sums=('')

prepare() {
    mkdir -p "${srcdir}/bin"
    mkdir -p "${srcdir}/assets"
    cp ../bin/* "${srcdir}/bin"
    cp ../assets/* "${srcdir}/assets"
    cp ../misc/ltsa.desktop "${srcdir}"
}

package() {
    cd "$srcdir"

    install -d "${pkgdir}"/{opt/${pkgname}/,usr}
    install -d "${pkgdir}"/opt/${pkgname}/{bin,lib,examples,assets,docs}
    install -d "${pkgdir}"/usr/{bin,share/applications}

    mv "${pkgname}/ltsa.jar" "${pkgdir}/opt/${pkgbase}/lib"
    mv animation/*.jar "${pkgdir}/opt/${pkgbase}/lib"
    mv "${pkgname}/ltl2buchi.jar" "${pkgdir}/opt/${pkgbase}/lib"

    mv animation/SceneAnimations "${pkgdir}/opt/${pkgbase}/examples/animations"
    mv "${pkgname}/Chapter_examples"/* "${pkgdir}/opt/${pkgbase}/examples/"

    mv animation/*.pdf "${pkgdir}/opt/${pkgbase}/docs"

    mv bin/* "${pkgdir}/opt/${pkgbase}/bin"
    mv assets/* "${pkgdir}/opt/${pkgbase}/assets"

    mv "ltsa.desktop" "${pkgdir}/usr/share/applications"
    ln -s "/opt/${pkgname}/bin/ltsa.sh" "${pkgdir}/usr/bin/ltsa"
}
