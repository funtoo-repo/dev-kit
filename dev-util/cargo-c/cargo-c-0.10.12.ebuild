# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/f0/bd/fe/f0bdfef9ff535d3a0dfad3d718d7283c2b95226a411b748167c1bc75dc9f087b4f38271a2a775a73ab57d4a0eb8e48127903063007b5ccd9900db87d8a4ecb5b -> cargo-c-0.10.12-funtoo-crates-bundle-a21dd8dde926fc463d2306188d23cfe5326b09e885d587801794a26a1a6b9b61edd3a7d0788f91b60718f5b7912c1f4f78a5cb772db3cde5097b51d870688892.tar.gz"

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