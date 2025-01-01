# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/3d/44/ec/3d44ecb70fe9babc9e004ac9bdf86f49826ad99f667302d7900bd550937547d9b203f22523937d216931ee45dd45414ccb12d7f6171f5fe55a6a226e6f5b7272 -> cargo-c-0.10.7-funtoo-crates-bundle-0ccaa51d2094d0b55fa07172464dcf644c4a5e7d8146f69335f7ba1257b2c785fafb7f856f2344744670687c812c2aac89173635ccff8176eba8e9af181231f2.tar.gz"

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