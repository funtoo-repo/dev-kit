# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/f9/3f/a6/f93fa6b1d063b9f41274c96db8a2baa232d2b30e7c1342b6b187ab2f651ab5f95763fcaf9dc6b1a880bcbb94ac0cd82e231aabac8545fad79190dab584d7e8de -> cargo-c-0.10.8-funtoo-crates-bundle-1c9be2fa0b63f4abbbad01ba581999395fb73c0e70a65815004f10814c9e6ed085bb8001d582819634fc76502647933ee76c7e6a4e2d402a26abf5a6d16fbe5e.tar.gz"

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