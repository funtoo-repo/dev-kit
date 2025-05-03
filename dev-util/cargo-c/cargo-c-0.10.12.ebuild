# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/4e/74/8d/4e748d486c7eabaeb508344f53872c02293fda03845a3344c56fc0b8b1a5c60cce6ef6e8a26bf7a26fec8952ed28380407dd9ce0e42a60ea92223b4885d73d3f -> cargo-c-0.10.12-funtoo-crates-bundle-070ec5b06ebb5ed059185447a97768d4ffa7805b3a66dbfa5af0d91feeea68cf38eadbf28caf2d0adcd024b6caf1fa0099530b0298a4cce0f951591e99d1da27.tar.gz"

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