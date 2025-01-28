# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/4f/08/b2/4f08b299d694f3ad7dfd2edac10aeeea318a7b36874222ef14d80b8fdd282c91f4db9948da5e822d34d2f96316d80c79d21e715a2fec4c412e9d52c544039e52 -> cargo-c-0.10.9-funtoo-crates-bundle-6840430aa1f57c171df2e83a52d4190d1155c1cf8cd15ff1bca87620810b4e23fa930ec4db9027284587873d1f553203b5baa1fdd51938b8cd263956edd3c755.tar.gz"

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