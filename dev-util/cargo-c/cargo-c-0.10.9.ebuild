# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/9e/da/04/9eda0488093f66a446c8a3c9f0432f67bbc3bebf1c77b1c06882a3880ef21cee26969a1c6ccf2a43141be065c47a190bc230a9b0975df6f164808ae25b6de9b8 -> cargo-c-0.10.9-funtoo-crates-bundle-3ab2a3b0017b8109ee6d590449dd921ed0d1b286d38d10f380ef36d7d6b3d668d0ea5ca5901a1ca9ced11dd65047f762c16eaa486d6cb82414fb1d0d938670e4.tar.gz"

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