# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/d6/3a/e3/d63ae314a53feaf41d7550a1382f7681211fa2274197c3e838ab8d3ad4a438c0aa2b89476f66b75acc0d36b3460e3ce68839b1750d16654d8fd31609066668a3 -> cargo-c-0.10.7-funtoo-crates-bundle-d038d947acf294a5c71e0e10bc2f3487df68db305136fffb16df2a7957b4b2819acccc4559ef053ce97c365b30b7ffe54f7b5a3c5ed83aedfea3267ad8e50dc9.tar.gz"

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