# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/78a62e7acbe4994040f9c44694b798ac57fd470a -> cargo-c-0.10.18-78a62e7.tar.gz
https://direct-github.funmore.org/5f/d4/ca/5fd4ca99b3161852996d06b26d044ce528fe337173af12a962ca3995b3b03c0a82d9cdcf160ed6127e2be5f3d60e0db94ab8702aa2aba97ff8b71c893fc25ad7 -> cargo-c-0.10.18-funtoo-crates-bundle-188b56a23a0041ddc4089ef6796ba8a5cb6ed222908f48871376f5404ab7e60ad3de462e881e5e3364fd11c01da6256cddf14c4efcaea61745d04a990f3a732f.tar.gz"

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