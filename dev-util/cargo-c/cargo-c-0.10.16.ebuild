# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/5091d9613fc6536f2beb0e7e037597fe0e0146bf -> cargo-c-0.10.16-5091d96.tar.gz
https://direct-github.funmore.org/e7/d9/c1/e7d9c124a5655cfdee08ee75f1ee7e28832515ef33a69adc9c5f190020f49e1190e7a91011c5040857f9eadd407bbf5e45c00d64a8f22e5fc31179481ed12343 -> cargo-c-0.10.16-funtoo-crates-bundle-cf46ae0483c727e2c7fd12aa407f5f5445e41a9b1d2ce157feecbffc7741841b0fb24240dd1e3f457d682b17d2b5268b1944d3364b8f332dfff7d60d00f01368.tar.gz"

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