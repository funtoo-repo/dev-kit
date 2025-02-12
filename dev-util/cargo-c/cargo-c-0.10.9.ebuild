# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/68/4a/34/684a34517f4cd48c351ac53b58fa12217b510442654052ab80e36bf4b07af6d3c2a71b2ea4c87332fca0ef335d06e113aa70e4a4c4d4028ac3ea682e1bfae27a -> cargo-c-0.10.9-funtoo-crates-bundle-e214ec01f779d78539512f0f3da7d3ce89f6bc816ccb49f9e70eee73a4b802329a7ba9edaa703890e814a7853905a8735cc52b88857df406935e89cebc2b9db1.tar.gz"

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