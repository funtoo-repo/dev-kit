# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/33/29/4d/33294d58091cd6f4c6d6021a07f3ad56fe6c5fef934de04a8fa8f0e41615517021bca34f0557fe6c66ffadf1febbc5d6e4d46ea0d1f0d9620fa2237f059c23b2 -> cargo-c-0.10.7-funtoo-crates-bundle-6c8595d5b9c43546e64c7b2722dd8a7f545a619a80ef3b7926c2d368daf5cd23b8c020c0fc7d7057e13a30503ed7044a5b74f8d57ef3634bfc0279cdb5ee1ed8.tar.gz"

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