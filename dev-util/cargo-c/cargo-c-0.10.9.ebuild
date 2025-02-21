# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/7f/f6/2f/7ff62fddd0a4cad97796f1f34cc43563fbd739d09531b8fd1f7854a531432d31eee4e5dbe63c4581b6d2aab7b67d99ae25d83c8f57390909d50ab06f21ebdc98 -> cargo-c-0.10.9-funtoo-crates-bundle-0d9683a26d7d75761b2e331b3c40a7f86f9709aab1b095f6b38f46b3677c0adcdd74416395a454ad5a10ec90b0e4577cf71eb8fec814e6b2dc2e5af7e28a7c1d.tar.gz"

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