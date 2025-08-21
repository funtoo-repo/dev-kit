# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/3e178d5609e5dcc20de3cb0de1bf579329e43784 -> cargo-c-0.10.15-3e178d5.tar.gz
https://direct-github.funmore.org/9e/90/e4/9e90e4dae53f76434da58b81d144a17d890cbbc7b0f659b4a115bb43c41939bfa6f3ad076460e65999d90963b3fd5f061c9f6b5dbb552cacbe065c2af0c169a8 -> cargo-c-0.10.15-funtoo-crates-bundle-0f1046061a67597456685e6e14ae8d36024d5232516a63e22a8e0b0b3e866e8398da2a978dd2ff7eb1e6aa6e69272477eaf23c7f9ec7d1b04b7dfe00727ee7ec.tar.gz"

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