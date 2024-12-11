# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/f4/86/35/f486355f5c518c66ad5acfcd523c1b698ffc8b11c1b0709f4f5814c09360e865236099dcefcdf5974af7e51030b2f8f0fad877c3a1c5d3ebb3ea75aeeac12d1d -> cargo-c-0.10.7-funtoo-crates-bundle-4c69bd8a658b39948f89577b764fe7a5f796fadaefce5cb699b46961bd850462af975768b601c4f3ab5518db1d6bbb8debb12ae7e82da381ddd00e7421f3ffa9.tar.gz"

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