# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/d9/c5/a8/d9c5a89cba04037ad989e391ba0712f64f0a74b22e35577f41ee826e792f31dc2c7faa2b31347bca4cc1f16fc9d6d7c5509bd9cfa294845abe8ec1f63e4ce3ae -> cargo-c-0.10.7-funtoo-crates-bundle-ca090c25b3e550c74ba18aeb12bfe3c217d0b7e4d5cac649501dcfb1107708c563607cef58084e3475822c7d1336f070b111822a71e8d43a0025527872cace48.tar.gz"

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