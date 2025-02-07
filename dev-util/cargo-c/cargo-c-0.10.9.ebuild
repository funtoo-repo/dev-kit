# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/51/9a/45/519a4583dc3cf39fe0088ec2071f5f5855a44351d8b2b9f300c3c98a98bab32ea0f51e7bcd9858cf332c7cbd7fe19cb608a07cb0eab8dc3b02f7d034f3f37d3c -> cargo-c-0.10.9-funtoo-crates-bundle-f7c150bd7d4335fa26263f5565064a2eac196523c9262a560776f86dcebd02b8f96a5c91ac0c02c508fe033810d2dfe03b987d02082f17ad1f3cfa19edf81b75.tar.gz"

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