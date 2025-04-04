# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/bb/59/50/bb5950be1fc2c1c8daea99e5f9bfd20d738e22417506c99c97a04e79711837c0895d1b0a228073f61b9b9e5f9d46af21aba4894b07f4fa0315890dccb58a1246 -> cargo-c-0.10.11-funtoo-crates-bundle-b1ff9c3eb1a8d6b110b3ed3cb651d24c492005500011f3de224b3d57bffcd060ff26fdeff70483db3e35c0f99f80307f25415dab19fd44ae5dbf5400c0d694d4.tar.gz"

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