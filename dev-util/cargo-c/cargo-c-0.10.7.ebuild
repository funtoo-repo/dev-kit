# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/8b/5a/7c/8b5a7cce3321aca7d2812ddcb0d399ce1e746d61e958733b9e2a933fc8800d5d06f3c4471c56431f5260bdd9ecb0f98635f8334b864a03825f0570593455d0c3 -> cargo-c-0.10.7-funtoo-crates-bundle-fa4b9a447548836e145e222529f213a9c0f939cbcb21afef6077a11a678fd7ec8b4bf1d667cd2f7cda158685881e05168338d8153167594f5e98fb124aef1be9.tar.gz"

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