# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/a9/25/1e/a9251eb8a6bbe4497292e52ac88c83a106debe2fc2c6292ce44fd27a6d45252f71299b5f4829e4398068b39f6256293b6f96718a4ad769e315b377bd7403e0a6 -> cargo-c-0.10.12-funtoo-crates-bundle-5784f49d964bfe630c6853b13a6838aa38712c8232e3d57a83236275454516341ff629d028c2a2ea384acdc84d3c594573e2fa188c87686f77dc76af0262e81b.tar.gz"

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