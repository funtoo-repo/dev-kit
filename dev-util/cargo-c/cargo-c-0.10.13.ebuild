# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/3b/25/4b/3b254b77ecf12b69da9c350750d847efd7666c6aeb761dcf52caedf98e849892972e680666552c03c82c26459564025c8e2fb697af121380ec9c25e981e0f8b6 -> cargo-c-0.10.13-funtoo-crates-bundle-4ee490396ce8df048336443526e03292ecea9eecf3c2d672ca399d54145da70b831ed0711daf2aa8f18d9b6cbadc208656d270a28f9fc14203b3f1c34868eeea.tar.gz"

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