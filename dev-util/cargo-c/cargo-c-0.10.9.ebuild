# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/7b/ba/db/7bbadb451bdfe0cb51fb00305bb2329de28327f90cccc022b1e9da1c60856f498d40a0f5e98d01c5eb956570fdf4f9f9523c36615e81203e28e655a881b12a08 -> cargo-c-0.10.9-funtoo-crates-bundle-dc6e992b79e74cd5f45059cc3ecef8f0b43e7958d84b57f3cb2c94e1ab80ffe1335843e1f390dcdbdb5469e44ff648d839d835aea0f0bfe37363a608e801508f.tar.gz"

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