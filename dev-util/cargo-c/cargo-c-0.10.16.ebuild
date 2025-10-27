# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/5091d9613fc6536f2beb0e7e037597fe0e0146bf -> cargo-c-0.10.16-5091d96.tar.gz
https://direct-github.funmore.org/9a/c6/0f/9ac60f117a67d25858c01675ec90e4ab614dca55868b329f3f3cb285018f28b02430672c78098c97f2124c67d08516e40df659638fdf13cdaf27f924f63022a9 -> cargo-c-0.10.16-funtoo-crates-bundle-4ccaed7620c8188b03cdfbe3c52e8d0947c2da0ca489c8407371324242c4f4807b163cf273561dc0574cee160de6f7d08de44da659ff7b4d02d4598f8062eca9.tar.gz"

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