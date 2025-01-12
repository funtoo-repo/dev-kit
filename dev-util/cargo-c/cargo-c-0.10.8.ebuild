# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/90/84/48/908448a9fd4afdf9d08c7cbf6b09540bdf4b81e3b200946c418b193f25e1d7247175d7116a25ab6f875911e5df61c202adbfc7dd82fad410f09ffcc95f8f1492 -> cargo-c-0.10.8-funtoo-crates-bundle-7109104a6bd9dc39f2d376fc674e88ca2f8d1224cffbbe25e70b5ed042bd8115ded88927d3001f030f92c0e0a8b95a8c2f17a96994b91034d6b7d758db2fdd92.tar.gz"

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