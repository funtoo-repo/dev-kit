# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/5d/2f/cb/5d2fcb847c7f70b564844e8700994ec97a6814862394ab4839a62492c2a49befbbe424ef23d3109f85ea0fb46f2117f6214454f01e5b475a6af57a21be3f1f93 -> cargo-c-0.10.12-funtoo-crates-bundle-34eb537eaf35f389217fca7b39345c43b3f4bf208769431c12f3be0d1fa9d0eff265851d4731c8ed131a1f671b627f882d590f642b47509588f32b4e9c634820.tar.gz"

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