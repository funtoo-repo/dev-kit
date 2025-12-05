# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/78a62e7acbe4994040f9c44694b798ac57fd470a -> cargo-c-0.10.18-78a62e7.tar.gz
https://direct-github.funmore.org/91/a9/3d/91a93d3c96dfe4e60ab75bfa33edbedd8c278c864c57f1347dbbed2304f03eaf8e661b942bc06cdcab96c85d0b5f0751b214e78c91381b60f8d87ba498bb95a9 -> cargo-c-0.10.18-funtoo-crates-bundle-13c3108f309acdea0e4b40a55248446978d2e33a2634b08ceb0b3a246676e6c52fdf113fb6132fb9e112aca5b80cebcfa20ab66acd8d57a2bbad7cb6b6112abc.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND="sys-libs/zlib
	dev-libs/openssl:0=
	dev-vcs/git
	net-misc/curl[ssl]
"
BDEPEND="virtual/rust"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/lu-zero-cargo-c-* ${S} || die
}