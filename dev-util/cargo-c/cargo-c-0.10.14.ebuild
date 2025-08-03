# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/d1da3c27a0defdceba12c2b2762094cdde6c0337 -> cargo-c-0.10.14-d1da3c2.tar.gz
https://direct-github.funmore.org/54/c7/a6/54c7a6e142665322d36c3fcf2eaa4c7c3bfea4521fa517bb1291c6b486a5a6fc6f345f1d5adeaf29552636f0f4ac2facdabff200dd1995b2177a0bc04e237d3d -> cargo-c-0.10.14-funtoo-crates-bundle-43577bbef141efedbd1633becc35252bafa633c569cab8ff04d0cd9a48bd2b6052876635406346dcf1ccdb1b1ad958a1bf9847b20e9548c5ab1ec88e815be02a.tar.gz"

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