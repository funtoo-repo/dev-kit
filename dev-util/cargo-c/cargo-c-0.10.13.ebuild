# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/be/76/38/be76382e88740bd9c6408889b2629c1e201af99be183e143bf3e7371b554a96098ce3b669b50b6d7f46f2a3ff21a6680950930c1a6bb20ba139508bd7802536d -> cargo-c-0.10.13-funtoo-crates-bundle-bc1776956ffe14f8f04d3d2db144524658f427a9e7081398759b7faeafc55dd4e82ccef97cc093272fa30c15f2db896990d0a7712ef868c2f563cbf1f0d31052.tar.gz"

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