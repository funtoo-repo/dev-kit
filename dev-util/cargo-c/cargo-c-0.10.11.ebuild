# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/4c/d5/ee/4cd5ee30b9eeeef647737a6df1c21fa1378c8b528e395e0da1f92fadcf40bbb3f4755a5642828ea00a9be0aecd31cec2828290b7d544c332452dfdcbbf85e206 -> cargo-c-0.10.11-funtoo-crates-bundle-0f790adf684c79c2e0c6f741b35758a5fc52d5d475495d991abb259080097e11594f02d7b1e6b1dcf4a4161bcb1d4ac07d0e07974cb304fee90abae8ad4e4357.tar.gz"

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