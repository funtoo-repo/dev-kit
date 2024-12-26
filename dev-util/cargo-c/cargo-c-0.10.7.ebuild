# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/eb/cd/18/ebcd184545d536ee5fc5ff507b6cfd4985d5457486eab9fa37f23a8e05ea13ce44b4c48f4326627d6ccb4f92a65cbfc4bce18c9669b63cd0210e95431beaae91 -> cargo-c-0.10.7-funtoo-crates-bundle-c0aa0507d08adfc720cbdf82e2d1e39d7750366398e9163dc4d139563bf7d5d9ef22e9bebba89250623973c76a28c1ce8d90b3c069befd6ac6e77f56f1973052.tar.gz"

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