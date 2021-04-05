# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3 cmake

HOMEPAGE="https://gitlab.com/interception/linux/tools"
DESCRIPTION="The Interception Tools is a small set of utilities for operating on input events of evdev devices:"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=

BDEPEND="dev-util/cmake"
RDEPEND="dev-cpp/yaml-cpp sys-libs/glibc dev-libs/libevdev virtual/libudev"

EGIT_REPO_URI="https://gitlab.com/interception/linux/tools.git"

