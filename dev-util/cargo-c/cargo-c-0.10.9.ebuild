# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/5a/d1/89/5ad18944db5a72bad161a9431539c7a4d5bd8edb4cc0113db0d5afdf61617942237a0cf3bd15ffa9e2a0070a00db258a98311d53f77c255f6a84e0cc3382f67b -> cargo-c-0.10.9-funtoo-crates-bundle-f9e4f3ae80a33b3ab4255c3eb9c5734f0cbf165f0c05d11923a30a38d3b13d69718834182d5aa4060582a00a5c134b4c342ea3522cdb94600c77028e2aee9a7b.tar.gz"

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