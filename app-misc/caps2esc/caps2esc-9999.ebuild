# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

HOMEPAGE="https://gitlab.com/interception/linux/plugins/caps2esc/-/tree/master"
DESCRIPTION="Front-end ncurses TUI for remind"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=

BDEPEND="dev-util/cmake"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="git@gitlab.com:interception/linux/plugins/caps2esc.git"
fi

inherit cmake
