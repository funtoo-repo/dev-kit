# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/06/db/fc/06dbfc7751cffff725c0d907ca62c2a0ffb8de9621713e9b259e1addc738f7b7f864ed395f67ae35543fbb8133da636fb4664ad1b55ed6456d8d1890e5459d13 -> cargo-c-0.10.9-funtoo-crates-bundle-1e1560b1bdeb036d7aac273c61e0de94209854992207fec1a55f1702e39071d1859d1f0d83152a7fd1efa42da767f8e634e57c9f8adb58ea90a825a002356fa0.tar.gz"

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