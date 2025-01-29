# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/6a/29/bc/6a29bc5b5a50a956f3a229d43c7da360d6d28ca848ffb638aa3adca81bcac59cff5275ce69e73e9cbbe45b239807cb839de47dafbbf2af15bb6b11d107f18fb1 -> cargo-c-0.10.9-funtoo-crates-bundle-b3fbd2cf83e77d4a3c396a46de8c66b058e24e8abcb2e400aa36f39114a5a99130ff8bf89c4ef248f906a2ddd361828a996b5d5c71a7347335821c7c44b66787.tar.gz"

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