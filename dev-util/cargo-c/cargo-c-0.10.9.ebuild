# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/31/74/04/31740495327bdaac8f5bb2001d89e0b8c86a3dcba7e30fb5f6e6741b2bf0e8d9033e190df55cc5241d2d7de6aa064c903aacd7b381808dc00cde30b9e71132fa -> cargo-c-0.10.9-funtoo-crates-bundle-2a59436aadd72b340d131e714bd7c40da29e7609196f6b8574c7be1e7db1d15568e9ddc8bf99d66abdb95a9e7d4c240d29033bc695182011b452f259d6dc39e6.tar.gz"

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