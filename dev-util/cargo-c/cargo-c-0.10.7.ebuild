# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/1f/8a/1d/1f8a1de5e6a43b1d8d77e4a3230100666be523cff9f1ea8aef894725eff5ad0bab576782b5278d40c4ad4d566837737827d26320b9c6c20ffa0cd41c4ddee07c -> cargo-c-0.10.7-funtoo-crates-bundle-4311909070b3afd294ddacae0bc28c9d0c9958bc6c70aa5039359db2cbd3d51eccc43a3cf50663c20150560419719313c5b70e333bbf73010f388638be2fcefc.tar.gz"

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