# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/9e/73/4c/9e734cbb6bad518984a999b51eb2218fbd9018d413ab459d7d3dac6f6981257c72625eff389a8ad2b7bf9f2b6be0c36d03e7744149f195f2c1a53367687a8b8e -> cargo-c-0.10.7-funtoo-crates-bundle-0adfc13cc1688cdc6bf11fa7eb9579cfda690dc02c0fdcb05ff3f32a742eb76d15d64bdf4a0d77870297abbc57e9e233f8f94545e21e59ceb3127d89969dc5e1.tar.gz"

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