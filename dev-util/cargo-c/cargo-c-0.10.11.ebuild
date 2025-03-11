# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/6d/63/e2/6d63e2f23e09c540d9785caad7d9deb3de69843f56337eddc84ed8303a5c8960dc677e05dda2337fe33ac96d6e7d42141c7a733f3d6ede1a5230ec7e840f90e5 -> cargo-c-0.10.11-funtoo-crates-bundle-fdae2fb00a83104584a7888951d4e98e12070f1f678c19d1d5fa3280920abb32380abd2a386db986cbb350fd25a4936500d6f3ab5a105e900bba83e03f962e93.tar.gz"

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