# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/e0/95/f5/e095f5db766afd5b75a79308102b905c1fbf54822fa1d882a2ef15e3d0e1174adfb76206b3e70895153faf8d54a9b57913939a207464aaba10b742eb151aa170 -> cargo-c-0.10.7-funtoo-crates-bundle-f792dec1797b5088a74337f87b9955810250b004093c1b2b9bc32cdd5a9b4f4bfd3d405b5afe0391bf85cb64e329a0687de67c941e18725c65738e266b922d43.tar.gz"

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