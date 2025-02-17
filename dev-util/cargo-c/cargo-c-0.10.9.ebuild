# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/7e/51/da/7e51da3e97ca4f8399ddcb3e7aaa5b4651f06ca2fb8b5dbe384a4679372e7a77e2cf15b24a4e7ac4ab54abbc547f6aed9a991cd0dd7e63682ec8f1b4fa115f1f -> cargo-c-0.10.9-funtoo-crates-bundle-d3668b3afbe6d3f5d4b70fe945750562fddaa82da5c8c79cbc364ab5e17181bfb954e3d2a95c862ef99179e08c7e4103632e80d0bc4bb197dfca5a8bd9f3bde6.tar.gz"

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