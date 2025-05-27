# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/c4/6a/7c/c46a7c88cad77e5b5f669f98fb1391ec10a8c1222eebcd1b9631ae008ddeecd674c4630d1d6f33793343fe0ecb7ea4308660c2cfca58dfb7ccf2cf9f7bb2ed2c -> cargo-c-0.10.13-funtoo-crates-bundle-c3ea2ea5486c5ce164046dadfeaefbe4b2c3105209f668437537b5ffed8f19d59ba640fe37709f7760407f9f7f003b646febce56cb6f464c77825d92ed7cc992.tar.gz"

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