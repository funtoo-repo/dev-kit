# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/ea/80/3c/ea803ccacda85fa3b35f121893340bf24237336e803d043456c9e8cd218e21e580fae18a4056c5fbc6975f97787af88af2a609e1615723a5e6f16d6d9a3208dc -> cargo-c-0.10.13-funtoo-crates-bundle-d39217931ea3734984a387b08185b7dc31b644f1e3959bce6f3f3315613857aabd9d0832a3de68b6cf5dc848d4686d65c7a141fb21d3cdbb6445e52cf5bce790.tar.gz"

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