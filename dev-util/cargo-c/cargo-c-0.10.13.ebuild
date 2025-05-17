# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/e8/e3/97/e8e397b94c2e9ca8f532513255c4a355160002997c46dfeb793130ab089d7d1055595502011254aee915345ef33102b6129f0377f12a88aad3b8820f89497a59 -> cargo-c-0.10.13-funtoo-crates-bundle-66857a8c26a0958910c3793d1eaf3e3865a0b0afcf88490b683ddd54da916402aa32f74699fd6cb19e75566dcb851989bbed769b0fc994a8bee802fae866e155.tar.gz"

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