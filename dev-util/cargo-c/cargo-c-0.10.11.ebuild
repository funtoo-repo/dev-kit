# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/9b/75/69/9b7569bd5f25c0be0c69037dcceba408c6ea2c641033b95274b14401e3ac61b919b817f018d7457719bb11011b8094af5af32dcf9be7fb7bdcee96e58b88a69a -> cargo-c-0.10.11-funtoo-crates-bundle-7c8fe33617ce6ce19f79c2962fb036d36ee6c589a54632c115b8e1d9e3f833ad477e4e5eca7d1a050f43ea2cdbe9b2f762f079e2fc024c5c1768700b37ff7022.tar.gz"

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