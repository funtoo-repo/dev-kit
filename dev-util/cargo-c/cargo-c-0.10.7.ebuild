# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/07/d7/01/07d701b9fe02cb41f88856c69ff114dc0a2ebe3e267739b098000faeefb4139c5294d15939152eb4732be3f74d1e8cf2f9b763201bf95ae33de4475acbe3b923 -> cargo-c-0.10.7-funtoo-crates-bundle-4613039119e57c9f23a8cf9337a75ce891bbbb706488499103baa6d18c6acf063a8356c2e00c4662778672e7305f1a3989f71631813312f80bc55f6e4a0852f8.tar.gz"

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