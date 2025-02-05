# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/07/75/fc/0775fcaab978e8d114dfd97aa902e4df537bb6e3e8e737f1e71fc055cfa632824aa9799923dc3f7956a6a396c1da94413b78c252fe0b42ec0f1ddcef907a497b -> cargo-c-0.10.9-funtoo-crates-bundle-4a0c708e27054c15300325a4edfe16e88b634ac792ed2f98fe6adae504b646c2c201435960369a38a171de96e4ebb64ca86faaacae53f25b9fa85946dd12d5f3.tar.gz"

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