# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python{3_6,3_7,3_8} )
PYTHON_REQ_USE="ncurses"

inherit distutils-r1

SRC_URI="https://github.com/tildeclub/${PN}/archive/v${PV}.tar.gz"
KEYWORDS="~amd64 ~x86"

DESCRIPTION="Browse Reddit from your terminal"
HOMEPAGE="https://github.com/tildeclub/ttrv"
LICENSE="MIT"
SLOT="0"

DEPEND="dev-python/beautifulsoup
dev-python/decorator
dev-python/six
dev-python/kitchen
dev-python/requests"

S="${WORKDIR}/${PN}-v${PV}"

src_prepare() {
	distutils-r1_src_prepare
}
