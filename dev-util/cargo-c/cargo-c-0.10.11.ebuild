# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/e2/4c/86/e24c862ac159d69bffc85fd18c33aff8b8c2a727efe37ac047a7bd71a946aa23035660ebe10ba45d3b5ccb9d3a3961f7b77dd2748b60f152966723c8c64da80a -> cargo-c-0.10.11-funtoo-crates-bundle-72f13ecf1bab67f7e83f05673009b94f320da20b19cd27b57d0292e25fbd1bc080ff5d968f51e7ec32f507efb519e684f0147e032b02fc51b1673493a35df90b.tar.gz"

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