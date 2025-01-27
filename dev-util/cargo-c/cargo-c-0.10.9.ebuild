# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/83/73/6a/83736ade5b5efa5c55c6027ff983be1eb1ecfd51927edd2a210f11a6f8df8e41c9abdcf8ec5aee9297e4997ca0edaaf6f259d7f9aa120b6ca3f4a19ac51e1388 -> cargo-c-0.10.9-funtoo-crates-bundle-58ae3105141b6f681af5ee733de45de54e0f3d778d3c4a9d4bbc257dbea982253de7e5e023d9a6276173896c5804feb0a334a8f668b7dcc84bdecd56ef0ada9d.tar.gz"

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