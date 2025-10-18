# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/5091d9613fc6536f2beb0e7e037597fe0e0146bf -> cargo-c-0.10.16-5091d96.tar.gz
https://direct-github.funmore.org/94/fe/01/94fe0104a7dcc5cf7a59c44bafbbb4c8e324a5e05b020ad5427c71ca2431931a890e326c6b5ca4f0276242e7915f28846067472452d79cec72f1c56ca736a8c8 -> cargo-c-0.10.16-funtoo-crates-bundle-5c02df0c56c5ee56a3593b955bb287c91b429a12a333eae18d176eb3ce9667189c70152d9441e555a417b6a6cd81faf02473332af75bf3e04bde4c6a5bda5ed0.tar.gz"

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