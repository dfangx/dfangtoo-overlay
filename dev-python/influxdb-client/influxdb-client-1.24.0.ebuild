# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} pypy3  )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="influxdb python api for >=2.0"
HOMEPAGE="https://github.com/influxdata/influxdb-client-python"
SRC_URI="https://github.com/influxdata/influxdb-client-python/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/influxdb-client-python-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

RDEPEND="
>=dev-python/Rx-3.0.1
>=dev-python/certifi-14.05.14
>=dev-python/six-1.10.0
>=dev-python/python-dateutil-2.5.3
>=dev-python/setuptools-21.0.0
>=dev-python/urllib3-1.15.1
>=dev-python/pytz-2019.1
>=dev-python/ciso8601-2.1.1"

DEPEND="${REDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

src_prepare() {
	sed -e "s;packages=find_packages();packages=find_packages(exclude=['tests', 'docs']);" \
		-i setup.py
	eapply_user
	}

python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}
