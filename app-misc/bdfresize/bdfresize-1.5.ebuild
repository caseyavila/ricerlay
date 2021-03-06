# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A tool for resizing BDF format fonts"
HOMEPAGE="http://openlab.jp/efont/dist/tools/bdfresize/"
SRC_URI="http://openlab.jp/efont/dist/tools/bdfresize/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	sed -e '/*malloc();/d' -i charresize.c || die
}
