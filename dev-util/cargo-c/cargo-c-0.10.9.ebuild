# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/ea/20/bf/ea20bfdbdf5c89fe487ccac7b9ad8573029fc113f4127bde541e241181d27de1137e55e378c551e68d70c694825d8c094fb1238165a1208a39d8f30218f099ef -> cargo-c-0.10.9-funtoo-crates-bundle-2121ea48ee6a39447b49981e85796caa8f2920a8de36780da484106ebfce93187b2c4c7a9e283c2e1b5005aed193d0f1534d7e592d8c09a6e182a7b652b6655c.tar.gz"

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