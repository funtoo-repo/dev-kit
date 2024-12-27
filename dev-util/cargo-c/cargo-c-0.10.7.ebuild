# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/2d/1c/d9/2d1cd9c3186516e5171e4d5d2b6130c36b2a34ea4665f229dff39e740d0df384f05120ddbe1610c815c073bcbb42a52bfbe66258471d85076d36dc887904d268 -> cargo-c-0.10.7-funtoo-crates-bundle-3fde23c6c5cd88304daf05b4560661db0a1594ac6ccb1b545c693a9a93f0734e074ed79bb23dd8d02ad6fa864182f11cd19e325a82310ffde43b1f31bfe2d071.tar.gz"

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