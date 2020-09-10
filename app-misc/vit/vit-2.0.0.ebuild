# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} pypy3  )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="front-end for Taskwarrior (app-misc/task)"
HOMEPAGE="https://github.com/vit-project/vit"
SRC_URI="https://github.com/vit-project/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND="dev-python/pytz dev-python/tasklib dev-python/tzlocal dev-python/urwid"
RDEPEND="${DEPEND}"

