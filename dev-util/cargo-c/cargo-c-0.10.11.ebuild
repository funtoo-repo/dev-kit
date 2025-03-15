# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/ca/5b/9d/ca5b9ddec61d192d9a3f878272d1b0c8905246f597f695d18e0f7d47c9b1b728395a94301602a92f4c083bd870d8bae8f02aba01809f0338309ead9e46d6f527 -> cargo-c-0.10.11-funtoo-crates-bundle-531fb07229c01579cb1c96ca7f0a5b4b00a6ed39bae6d6eabc4ab393b6ded8c25a94b10ae2a8fe19271e87459c882c53833665a5f3aa72e39e8a8c595eb53e90.tar.gz"

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