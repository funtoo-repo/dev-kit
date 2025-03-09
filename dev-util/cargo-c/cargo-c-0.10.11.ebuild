# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/c2/32/e1/c232e138e09061ae6ab156c1d0db894ed6342aede22f6eaf464ee7ca431fc18a5f9087562fb4b45b25607477c0a8d66d63764cc0b3b97672b1e3a2efe7e8b248 -> cargo-c-0.10.11-funtoo-crates-bundle-f7020288aeef6834070f6d2157a3c2f87413698eb7211d2e524619601c45ff9a431e6fee1c8e2b8d61528ba50fe79c514dbcf0636d27222a0d21631010666951.tar.gz"

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