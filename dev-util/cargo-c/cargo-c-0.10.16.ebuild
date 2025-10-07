# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/5091d9613fc6536f2beb0e7e037597fe0e0146bf -> cargo-c-0.10.16-5091d96.tar.gz
https://direct-github.funmore.org/32/46/a9/3246a9a68f67eb308e57d8de96f12bfe26948a3dd889c88ae830f7809966cc5ef5171bd4d8304a27950f3ad56cca276786c8831f3ce4cc0453738371cf44d38a -> cargo-c-0.10.16-funtoo-crates-bundle-f642f1835348243b0662be050e2cd9385412393e3ba6a30785225b2d26c719896ed3d51d838141816f899ef9e354370591cc4469e0b2ef8bdc78646c7ad076f9.tar.gz"

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