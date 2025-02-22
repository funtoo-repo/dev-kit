# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/1c/bd/3b/1cbd3b01948dcf53ecc84ed02cceb17890dc698a124c4c74ae4a3ae21229599b5910e850ca0dec5d1d185f36fb045dece01ac25ee8143e816ca84eb533f1e92e -> cargo-c-0.10.11-funtoo-crates-bundle-584accfca314c6f1f36c3c309ce9eef1086715517328d36dc7a71ad167d360b1ed699d137ad5b214d0884ac02f7a7e08a10c3f553b7ab691940a0608ddc5d326.tar.gz"

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