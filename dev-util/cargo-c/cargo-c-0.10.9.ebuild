# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/16/8e/ac/168eacf9d982b0e8bae9fc063eff6f3807989af6af6257c069a639eb6f3541d29362e80fc10f34f806be8eba96eb0066547bfcc90aa239dd8d2812a0404389c8 -> cargo-c-0.10.9-funtoo-crates-bundle-8d73e040992cc4f6f7a16de2191af93cadbd968ac7ff785ad8b93e6c0d1e3d368adc9a40dc36e69f2b4ce04e9445aaefa614377240fe7e55288ee2974c9bc2a4.tar.gz"

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