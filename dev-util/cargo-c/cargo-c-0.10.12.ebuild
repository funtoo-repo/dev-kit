# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/48/2c/9e/482c9e0625ee978ec92a829cbc60d95b1c90c6ed1182e8c33ae06c64e9713991f5241465e64c56a69d2019c61a47b536df70fe3d7e4b15ad79ef9f7551cfdecf -> cargo-c-0.10.12-funtoo-crates-bundle-e80036b0050c19c62fd8bd5885e29b57d41a0cc0d71d1de858c60ac0b4f0120b7eb8ddc1384124652765c74ad21ff406fa784b122ae0b39393d867996744d2cd.tar.gz"

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