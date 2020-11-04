# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

DESCRIPTION="Bitmap programmer's fonts"
HOMEPAGE="http://people.mpi-inf.mpg.de/~uwe/misc/uw-ttyp0/"
SRC_URI="https://people.mpi-inf.mpg.de/~uwe/misc/uw-ttyp0/${P}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	dev-lang/perl
	x11-apps/bdftopcf
"

src_configure() {
	./configure prefix="${EPREFIX}/usr" pcfdir="${FONTDIR}"
}

src_install() {
	emake install DESTDIR="${D}"
}
