# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools toolchain-funcs

DESCRIPTION="A collection of multi-dimensional data structure and indexing algorithm"
HOMEPAGE="https://gitlab.com/mdds/mdds"
SRC_URI="https://github.com/kohei-us/mdds/tarball/595be427b00eb8c29f51392896dcedef20afe249 -> mdds-3.0.0-595be42.tar.gz"
KEYWORDS="*"
LICENSE="MIT"
SLOT="${PV%.*}/${PV}"
IUSE="doc valgrind"

BDEPEND="
	doc? (
		app-doc/doxygen
		dev-python/sphinx
	)
	valgrind? ( dev-util/valgrind )
"
DEPEND="dev-libs/boost:="
RDEPEND="${DEPEND}"

post_src_unpack() {
	mv "${WORKDIR}"/kohei-us-mdds-* "${S}" || die
}

src_prepare(){
	default
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable doc docs) \
		$(use_enable valgrind memory_tests)
}

src_compile() { :; }

src_test() {
	tc-export CXX
	default
}