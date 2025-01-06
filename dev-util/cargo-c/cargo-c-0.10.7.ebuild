# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/68/6f/05/686f054861946871d5824dbef21064c53e07c74f0f0d81e8dde319bbe0d5c156ff70d2faa83d3d6ce19f84beb8f0e331eed6b474ba98e194d7b231573f3ba254 -> cargo-c-0.10.7-funtoo-crates-bundle-87142771856e976f9c7ed0818debb4056b36ee7f14271a01f004bf848312c0714326e3e38334cc3c7550472e992ee4b15a6fdaa8785093112c0aecbaf8c17c39.tar.gz"

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