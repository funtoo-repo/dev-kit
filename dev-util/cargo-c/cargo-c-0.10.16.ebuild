# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/5091d9613fc6536f2beb0e7e037597fe0e0146bf -> cargo-c-0.10.16-5091d96.tar.gz
https://direct-github.funmore.org/10/9f/2d/109f2d1efc699bceeb64952ad36cf62a4cbc20d375782d1a3028760524a80c465f1d4d46817d8d39ba807339ce53d8f694b86148d7ab6ff960fe2a1747d9ad42 -> cargo-c-0.10.16-funtoo-crates-bundle-d4e4ec16909ffe8f0a62e66d92cba6dc127a9f792ff0331725c4c427edab0121080ba13f8610bec92c25cd7ae80ac8e01e72a4426948b16d4777f778b801118c.tar.gz"

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