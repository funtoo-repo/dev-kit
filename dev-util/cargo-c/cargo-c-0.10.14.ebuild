# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/d1da3c27a0defdceba12c2b2762094cdde6c0337 -> cargo-c-0.10.14-d1da3c2.tar.gz
https://direct-github.funmore.org/33/b7/8a/33b78a927af5f8b654e6620757297a0eafaa8b2de8829d2d552e94f945417d0500b4f4fef4a7b20bc02fa8aa72aafbcf739b94076e056e9c784f573dce848b12 -> cargo-c-0.10.14-funtoo-crates-bundle-8728955c511973e92c678af540ef3f55a7c024dcd94b676d81aeb43b422c81132a2f733f8b6ababcf7709dff986adca2e6ae5b4e7fa7af987f37679ab4c7e8ce.tar.gz"

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