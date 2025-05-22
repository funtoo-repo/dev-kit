# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/d3/3c/74/d33c744de61dfd5a2feb44d9177e4444f1a6a99c7466cbeaf950e370fd60307f1516f2221091de1c93df0aa26b504d7a07c97133f25279fbf979e626b6944817 -> cargo-c-0.10.13-funtoo-crates-bundle-1b332ebc94fa2efc3dde68c698919d429e252f5aeca53f1a3cc246df1c137c652525395e74f663dc2ec1c0506feb97d27e74d3cd202c46a5c78f19f95e25b330.tar.gz"

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