# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/5b/7b/27/5b7b2793d85ca7fba6327baa1a30b49fdaacadd1667fe11c24089212f8d8395c8517566624b75e599e00dd8ed00e88208fee799914a5b38592ede893512cc8cb -> cargo-c-0.10.7-funtoo-crates-bundle-3bd15c03fa33d4f43f8aeed296fd546a0eda014cb7d8a91624208d29e620b6844edc3349717cf6c8926445b21496bb3c151864347f52ed89118747f23775fece.tar.gz"

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