# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/a5/1b/2b/a51b2b58c0d9a591f9f70f75e902111283f245a101ba43b0ffcc11dd3de4dbdd6cd832c42fe96357622648ef1625ec7435af38cc9af215fea8d66d6a973d7d58 -> cargo-c-0.10.7-funtoo-crates-bundle-b036ca76c5ecd81fc0e8b45a4556dea1b46e05042428ad76727deebdde54ef2f20d413d8d3729effd96834b9975f3ed6bc3e55fe1e7b78adac792c2d02011fe9.tar.gz"

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