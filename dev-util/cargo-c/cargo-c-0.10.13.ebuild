# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/49/82/c6/4982c6b3919e561e7c1d08298def04eb54e003f22b3c8fed4d154ec9ae351612c1f26c4d7292f77305196cc3db371ee2b280beb37f52bc748ca7d1a9db7bbed4 -> cargo-c-0.10.13-funtoo-crates-bundle-06d69639af7b76ee99a7c13ed94911d762fdf33f8d29015344e425a0e172d5ade1ddb06845e6c17eaeb46c357df7e15a6747da026555b786a92a840226345f56.tar.gz"

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