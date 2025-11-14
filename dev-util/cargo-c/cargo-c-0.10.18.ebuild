# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/78a62e7acbe4994040f9c44694b798ac57fd470a -> cargo-c-0.10.18-78a62e7.tar.gz
https://direct-github.funmore.org/89/62/8f/89628f2cdf52b935ce52a0ad27dac33ca7ecd5317fe2629c4b5874c6e1d691e74e516d8506d0301fb1d29d948700da85ef8ce8a3997758b1730441f96f6e6be2 -> cargo-c-0.10.18-funtoo-crates-bundle-78bfc037c242e6bc70fb9dd13d1a8eed42e671577ea4d140321fc38272d3374e98387589f2aed533a1bcb20c4778dadf45c2b63a557f670a5b59897cc4857bb8.tar.gz"

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