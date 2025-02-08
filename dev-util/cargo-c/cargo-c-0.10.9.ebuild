# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/ca/a6/d5/caa6d5918052ec5a1988f0e7a3eb606661666bac6957bc851e6623e0934ab2a21982d51096200c3219b92ac11b91af028ce9ce6036fa6848a68cc5e7ba4281f8 -> cargo-c-0.10.9-funtoo-crates-bundle-f3cd4f37ededbea798f657139aa380d23b250a72d321a9175b25c74dc7e3583c925f4a0cc2aab1171460de8f4a847f2bf94de1fda10cf093aff567d37bc1f371.tar.gz"

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