# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/7a/a4/cc/7aa4ccd5f24424ed18c1a94389b5504da2551afe102f2566bd12365c0e5ca57ac7ccb6c6fcdd3dd6b5b5aa78f64aae54283ff2ec65aa33a28a40a62527da9584 -> cargo-c-0.10.7-funtoo-crates-bundle-94b5e663e1bbf9347f0286e48ed227a3a3e66920f8b6f4fd6151425e40217b60306a1fa86ae02ff81c32db6bc2f32cabdb6a357e020ce67ec5f2115e26295d76.tar.gz"

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