# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/05/e9/5e/05e95e95d49e289d2ebee2662cbd2026d944599a6cbc734a7f1e0e84968e28d6724e8c43f9429c4b612fdd182bc6a488c63da2cb88010ae831d1a9e007392fe6 -> cargo-c-0.10.12-funtoo-crates-bundle-6be8eecaba48c4712e7ead04e8413d5cf55aeed7650eef55a80f9321d88c208874023978546872a2c6f073236097a26a71e7e08470ea1ed319eb46b6a790921d.tar.gz"

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