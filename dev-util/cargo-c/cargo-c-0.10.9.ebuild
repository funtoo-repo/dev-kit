# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/57/b4/d4/57b4d41e2e708a3a6c9eb3b246f6617375e785878c6adb497216122e314ea9800d8e5b296809155aa1738941cce16ab91fa148bfe68fd52fea03b33990bdb8a1 -> cargo-c-0.10.9-funtoo-crates-bundle-c3179fedf43e9e639bfefe58a31fd1a772800d4d3ee3151b66b609a061604755eb79e7a428c19f5a7b28f594c8caf59a094725ee2b2667ef68861ebbe40698d9.tar.gz"

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