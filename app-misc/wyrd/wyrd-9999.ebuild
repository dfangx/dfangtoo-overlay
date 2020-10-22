# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

HOMEPAGE="https://github.com/dfangx/wyrd"
DESCRIPTION="Front-end ncurses TUI for remind"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=

BDEPEND="dev-ml/camlp4 dev-vcs/git dev-tex/hevea"
RDEPEND="app-misc/remind sys-libs/ncurses"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/dfangx/wyrd"
fi

inherit autotools

src_prepare() {
	default
	eautoconf
}

src_compile() {
	cd "${WORKDIR}/${P}/doc"
	emake || die "emake failed"
	cd "${WORKDIR}/${P}"
	emake || die "emake failed"
}
