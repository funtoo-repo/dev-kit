# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/22/4b/cf/224bcf64150ae2e7c020f5d008e4132e440e81ee63a6cf61b39cf4b71a2700c8cd4bc17b4ed4ce5347b48ddb85e314764d7760b1086a87fa91e06a185dd98718 -> cargo-c-0.10.7-funtoo-crates-bundle-c5bcd14af602f1efa2b921f3e2e7d07b2b49893ad358aa45b39d4cc6a5e827536f6e6b37791ca4ba1c732c071cc1be10b0387698faaf701ca64eccfd90be5f08.tar.gz"

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