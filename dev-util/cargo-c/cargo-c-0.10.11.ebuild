# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/72/12/e9/7212e96c082d13bfe77e7ce9b9bbc0d6ed1983154ffe1c2cb62ae192a1ae23fdcc6eef534d2013435379cfa996534cc6f6bfa1bf1fd13bf6fefdf19d70e3f048 -> cargo-c-0.10.11-funtoo-crates-bundle-ae93bd39e60f76206e95b5f40d069d782bbc0822a1548956d728a0c77a10498211244d83d11603a38a68749c2ec750c6c5ca0d99090aeb01150079d3acf05402.tar.gz"

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