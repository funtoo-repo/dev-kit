# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/55/02/b7/5502b71389b7a8f55e801aa45b1b43da22c86f488de65fbe1c6ae5e47d26dd9747b2663b54fd625f2c8ae876196fa92600dc76650952c366a6ec689d5ead9556 -> cargo-c-0.10.7-funtoo-crates-bundle-357caad05970791acbd3e58a9fca00d4b17130f794e8f83febb913431e97fe2c2462330cc42e066e0c35e32f99fbee57b86651e4bb9b3177cb1edc4d57e0e8cd.tar.gz"

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