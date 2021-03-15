EAPI=7

# inherit cargo

DESCRIPTION="Tree-sitter language parser generator"
HOMEPAGE="https://github.com/tree-sitter/tree-sitter"
SRC_URI="https://github.com/tree-sitter/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

PATCHES=(
	"${FILESDIR}/${PN}-No-static-libs-gentoo.patch"
)

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" LIBDIR="${EPREFIX}/usr/$(get_libdir)" install
}
