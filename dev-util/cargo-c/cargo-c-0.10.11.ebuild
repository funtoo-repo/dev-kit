# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/0a/99/e8/0a99e826e020815f4e284c28365f2e31b74a36f2ec91ee31648ab08dd8abad6319fc2fde974d56cdf6fbb79905508b070d6214311420ab74498ca9ca4e63a1e3 -> cargo-c-0.10.11-funtoo-crates-bundle-e92ac10c33a2e567d7a85be2329580c9de6df212d6f5a3c4b3c7e0ce09bd567d8cfebad573d36706c4137b857e67d56485adee964b5df1e7406b8ea479128fce.tar.gz"

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