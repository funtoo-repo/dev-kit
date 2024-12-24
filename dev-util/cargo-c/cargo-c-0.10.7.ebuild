# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/13/e1/0b/13e10b096a47fe44403e2880c1dc33738b99a83f21efbdcda53d87f1623ce73563040cc4589ca326d70aa6fe4fb0e7f1615839e4c13d340c59de95aef2bc170e -> cargo-c-0.10.7-funtoo-crates-bundle-1789619ccbb43a2e58c44dc46c320bfc3246fb6a9068dfc4159b813ca05417b64be9326c85df7c962f25851e95ccf1310582d9440c1fe70fb559ea353303e89b.tar.gz"

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