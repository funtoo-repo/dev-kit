# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/d1da3c27a0defdceba12c2b2762094cdde6c0337 -> cargo-c-0.10.14-d1da3c2.tar.gz
https://direct-github.funmore.org/c8/15/24/c8152479c1def590e5ffdd030db19264cf2148b0f60c2d54c0002a6bd5014feddec1281a0cfdcfa6909b6f7bdfaf1a9c378a47f4a274b3236077ac5eea4133ae -> cargo-c-0.10.14-funtoo-crates-bundle-848dccba2fe7961578c82f5a67cd0ad7fd6577e94bb43d4a37b283d34a1de76aeb3d029134af3b12c648a8c24ff0da30c47af6736be99a2269d6a976c9833949.tar.gz"

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