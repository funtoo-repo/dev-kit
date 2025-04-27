# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/7b/a3/75/7ba3753847c705e94412bac23f92cf48fa3f19647c6a920a2b5550762636aa7e2f7187cf436c5090c1791af334e823ca6c40573dfb65b70d87b35dd75938c5d7 -> cargo-c-0.10.12-funtoo-crates-bundle-0f39888b51bad59b53ce5ef7225129578183ea1e221ffeb183d62e10c687c49007a5aaef7ff7873ac984fe1c14d4ba6a0ae0481cf5287f3aa90d99bae147e79a.tar.gz"

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