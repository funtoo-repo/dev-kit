# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/8f/69/38/8f69385fdb8d6e4112b409c395b2c5c175a12019d26108aae166ab5dd56dad9035982bb568ba9e1b91cf732a7171f7b6133c3c67f6658c1153be31b9e97b5d5b -> cargo-c-0.10.13-funtoo-crates-bundle-bb2e3b436610c60cdb9c900d5d97b3211066322ffcaf0c6b97ee25f3f2f87c7fe8eabf26b3b2d2fb6b144a2b837b505a03e3557dd82ba7fb49d0f16d389d8ba4.tar.gz"

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