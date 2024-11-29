# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c027fcf597e10154a8bc55c46182a4c2480d8d25 -> cargo-c-0.10.6-c027fcf.tar.gz
https://direct-github.funmore.org/c7/eb/16/c7eb16b93c6953c9d23431318c62c869c621426e545b4e0cfc742d3ba0dcb4ef52a2e63e960e9eb238855ec31e7834e11fa3a889597e861a36caeb66866e3438 -> cargo-c-0.10.6-funtoo-crates-bundle-c66e59d712b4109976d15553c000dddd3c42cd1cdbf64e478ae51719764f5ae94f28bae7b1dc9c33189c579a13e51dcb08d2ee3af49991909b2ea2e23247d27b.tar.gz"

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