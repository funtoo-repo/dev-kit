# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/fb/55/9f/fb559fc59af4f69f57e2ed4ff782f47dd2104a595c9ff6ec362474336d56c4915fd712ccbf7d365b9d73211225f22c1e45fcccd98fa9d1d27d668e02d81f7bc4 -> cargo-c-0.10.9-funtoo-crates-bundle-ff3ffab37a9d244fa0a256462ffba094c4bafccdcfc9582ad6eb33e3b383f8b96ab596b59489760856dfd90e3282a6ee9c23878b237b3243ccebfbe2476dede9.tar.gz"

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