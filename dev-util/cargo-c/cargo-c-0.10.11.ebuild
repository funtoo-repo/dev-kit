# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/56/f4/28/56f4288d884e17c8d1a191e3f9425100a94a205d59cd9097285c55bde76263f59ffa7649c57288e115624b17d4093cdf07d07120883bdd388a097d81f8bba2a2 -> cargo-c-0.10.11-funtoo-crates-bundle-2ac944ae80c8e924501e99961646e72279700da884beb87dd2ad691bfc3f56aae01461ac07bebb842c84fbf399035de2af5cab5f7fcde24a1ae5d8781fe3b8e6.tar.gz"

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