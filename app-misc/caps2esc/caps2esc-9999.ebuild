# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3 cmake

HOMEPAGE="https://gitlab.com/interception/linux/plugins/caps2esc/-/tree/master"
DESCRIPTION="Transforming the most useless key ever in the most useful one."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=

BDEPEND="dev-util/cmake"
RDEPEND="app-misc/interception-tools"

EGIT_REPO_URI="https://gitlab.com/interception/linux/plugins/caps2esc.git"

