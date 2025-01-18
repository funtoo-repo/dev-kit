# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/b9/61/93/b96193b5c3f1462a788d9d50806a1d91139e33d7d231c333977b3f31c585b049c8efb69fa394aaab051c6e6bbc6bd2645e2d630ebdc90ea076b66b0f92621d78 -> cargo-c-0.10.8-funtoo-crates-bundle-26f3fc22f4e5681a0608b06a5ea866cfe9909341906fd9a425d5d09870ad6b3b30e433650e428438eb86febee5e9d84e887f0de9b32c86f628a0698408d91b21.tar.gz"

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