# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/d1da3c27a0defdceba12c2b2762094cdde6c0337 -> cargo-c-0.10.14-d1da3c2.tar.gz
https://direct-github.funmore.org/a8/99/a6/a899a63055bb53470aea3efbf661a757339b69f56a1b51dadfd4e7a8343f539b7f422248735035b85f405322f860835e62c306fb73ad86c4462c2aed3bec40ae -> cargo-c-0.10.14-funtoo-crates-bundle-1248885058f9339a7869f24ae7e1a52a6373868ab5e4487ca5bc9a15f1c36afbea3604628bda28ac5892c1bc922f68f637d9aa795c9e7c33ea19c777b05e3093.tar.gz"

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