# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/1d/3a/fb/1d3afb1156f2d8f140a87ea2bcd1a02975c63175d31ee73b661987baa77da8d3fa380200c845f0205f56b0cf7feb7b061fb78c15ad0b486408e83c9096b7146e -> cargo-c-0.10.12-funtoo-crates-bundle-03a88ee5cb8d2774c1f551c23661738128e818aaa7e73f65ef5773992a5ca00477db31c879733b67b5ea3e06e488778f0b2bab2e95e9b7a80950624ec99ccb1d.tar.gz"

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