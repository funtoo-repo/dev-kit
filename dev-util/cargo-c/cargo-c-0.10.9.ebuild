# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/70/8f/71/708f716e21331c07f101057d7bfe4f5d25fc10d0241af2fbb62d3fb392cf7914377b100a56a9af608677b57957d48d0c21b9359ffe6d67f3cdc91a9f4fcc4860 -> cargo-c-0.10.9-funtoo-crates-bundle-5068706f51e4a55cc0fad64e917fe393ef0875d14b0b9a486df349acb57ee4bc8ad9cc2772c014f9b6dd6095ea95a3486ae49a0847119cadae4365e1053bbdd2.tar.gz"

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