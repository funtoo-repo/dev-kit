# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/7f/ce/e4/7fcee4228116d7e60ebb5c090e3866639c3ded8d80aff7d4ea2c94b5f13d9eeb71395350648d7447e6fbdb2c211fa666b38357c1d5a17586ed4f0950702d5521 -> cargo-c-0.10.12-funtoo-crates-bundle-d9016b5b6d6e9b42a0971510b1da61c0c482932b65ae915f7c06bf1640bea66a48676a11f50e1764fd6bd64ced0bb73c581700f02fa6f63957cabb3945a13816.tar.gz"

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