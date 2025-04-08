# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/0f/72/cd/0f72cd54e7933b8431af70c3f43c9ffea35329f1847c5fac490c6b949029e836bb83a6be80debaac238fd196c12fdd506ad7c636934342f46497faa8ee80a344 -> cargo-c-0.10.12-funtoo-crates-bundle-51f735237851ed9035328ce55ac65dfeafb19bfd8f0d757b96f2827a56bd37337726c4cf674cf4a246648fb882e1dca2f82d93abc38beef30abf5bebeaf9bda0.tar.gz"

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