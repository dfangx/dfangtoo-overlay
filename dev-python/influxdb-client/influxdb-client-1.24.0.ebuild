# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} pypy3  )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="influxdb python api for >=2.0"
HOMEPAGE="https://github.com/influxdata/influxdb-client-python"
SRC_URI="https://github.com/influxdata/influxdb-client-python/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="
>=dev-python/rx-3.0.1
>=dev-python/certifi-14.05.14
>=dev-python/six-1.10.0
>=dev-python/python_dateutil-2.5.3
>=dev-python/setuptools-21.0.0
>=dev-python/urllib3-1.15.1
>=dev-python/pytz-2019.1
>=dev-python/ciso-2.1.1"

