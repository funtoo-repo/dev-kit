# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/0f/24/37/0f2437407fffa62dc345fe7503dbe1836c6224cc1c4332566e59362d3bbd044b5304a5aafdecc5776c01736352548cc61e11ceea1f4c41fef98ba1b1f8ee8e1f -> cargo-c-0.10.7-funtoo-crates-bundle-7c9386a53b39a9d655a9a083283480318bea55a87326200c381624f0acd6e00bd968df3823dd534388d240f1de4a2280b16288d5e5f77cf9ecbb76e9207cfd45.tar.gz"

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