# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/6a/d1/fd/6ad1fd1f897062fa077e85c671f2e86c03af2001671662a60924983ee10ce7d21d0822553951edcd21d1dcfdffd60f11aa379f7ecbae5a7db0090f3656471c08 -> cargo-c-0.10.13-funtoo-crates-bundle-78397193b61300250fe8ef86313cbd9eeb355a3df14228cda3dcf962a11e43351541663bba7bd528170570b757d34f3364830e6c8b33397fd96223b90da89ecd.tar.gz"

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