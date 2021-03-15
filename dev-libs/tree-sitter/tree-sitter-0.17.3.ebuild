EAPI=7

# inherit cargo

DESCRIPTION="Tree-sitter language parser generator"
HOMEPAGE="https://github.com/tree-sitter/tree-sitter"
SRC_URI="https://github.com/tree-sitter/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

# src_install() {
# 	if [[ -f Makefile ]] || [[ -f GNUmakefile ]] || [[ -f makefile ]] ; then
# 			emake DESTDIR="${D}" PREFIX="/usr" install
# 		fi
# 		einstalldocs
# }
