# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/0f/2d/7d/0f2d7d46bc9a953f324be4917f36f1dad5d644ff18692d5991239729386aac8605474d287d5902a3b7f9f5bbdad9881b3fdffc19b028e2ed305311958328ee51 -> cargo-c-0.10.11-funtoo-crates-bundle-7d6854e013b4c295f583268e8d3bf046bb793c7e1b9d2aa32e60f0ef6c5d34ed15bef139a4a146e499db3378c835b27d2a66650c553c4f038e3924e673c5e2ae.tar.gz"

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