# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/a9/2d/41/a92d41068eeb6ce68d4e221f7c98f852c188657c12ee2e103bd3728652f806c86274135afe2a523e0b0c8b5238495286f70170c2b96184bd6f960df22aa54dd6 -> cargo-c-0.10.7-funtoo-crates-bundle-5b304d2d03b609f25628eefafc28172cbabbf65fc2f070cdbe7357f9869879ff444a9fb2429e9c9fe15fc99c20deb53d7db202a3ed695b577815109df6fd0ba5.tar.gz"

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