# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/2d/b3/c3/2db3c310a6f4216d9c1d584c3bdbb008c41f082f71bc239648d898dbe4347f78896e5894b6395c15b6640cf6c553183b2b5cbf8b925d664908f98cc3329d4b59 -> cargo-c-0.10.7-funtoo-crates-bundle-658d321b4c7805d4a3d2a8fbf7a0450f69eee98f62c404cd3b043832feb7ef9c9bdf9c58eaed0abcff0c4a220a40425861bc4d794e4deff78e23f47845ff170f.tar.gz"

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