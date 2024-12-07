# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/2c/06/eb/2c06eb9cc0259e6bf31a9aada2c409e09e0bd951c9b49c5b20196242beefd744e32ffeb54909b92409fa9391ab87ac0b83f21a63af7bb5571b701eca6aa2ea68 -> cargo-c-0.10.7-funtoo-crates-bundle-510303a642aec4f1bd4f41a5da4674f18cb85b1675beb05e73d133f3336c7f5358f97f69056a220e88ab9231ca19c15f170e7715fff792236994f46c0735d716.tar.gz"

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