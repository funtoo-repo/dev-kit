# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/a0/aa/c7/a0aac7b21ae88fa337bd76999004a397dc28440a24d38264e4f72aac4c4eb151e6182c628092f0a782e14b8f29b440b6af3fff1b692f0f0a50c5176f2e1c22df -> cargo-c-0.10.9-funtoo-crates-bundle-a22105b2802e483acbad9a8ece2d770a93314e5440fed16c63f4ee1b9c93d8e4e004abaccd8c82f79a3f0ecc8d234b989b6af363d9c04d34cdaa44a5b81f606b.tar.gz"

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