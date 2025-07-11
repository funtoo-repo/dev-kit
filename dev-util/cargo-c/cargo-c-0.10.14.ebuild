# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/d1da3c27a0defdceba12c2b2762094cdde6c0337 -> cargo-c-0.10.14-d1da3c2.tar.gz
https://direct-github.funmore.org/41/9b/ba/419bbad99cac6cbd6abd6083b46119bc1c5abf591acbe7a0961bd8b358389e0d4b048f9ab1894bbd34d21042c1f2b2412490176baca3598c3dee29728bcd214a -> cargo-c-0.10.14-funtoo-crates-bundle-ddcd18f1b2838daad84d8f30d674b43a9176437017c7099eb056c4d5af0abfc78426f78aa8e24afe8663f2fbf0b9bc9d158d576e394e37c33e5ceb5e667acef5.tar.gz"

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