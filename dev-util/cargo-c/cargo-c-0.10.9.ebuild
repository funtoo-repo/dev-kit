# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/c6/65/04/c665046121740f74590e0c934ed1caa7bff4ca52fff92321e448fbe7c6c8f4a512a46b3b4487c7fad66c8cf7b43aa7dc6d9ff39b99db2caab5c067080cbf3066 -> cargo-c-0.10.9-funtoo-crates-bundle-cc9cda8bf4cdaaa3d2695e79f1b628eeb3199615f100cf5a6014c489504b6d3ec7ee59826b302da3dd8a61a4c4da42338247fc6e9ed84972645597c565868cd7.tar.gz"

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