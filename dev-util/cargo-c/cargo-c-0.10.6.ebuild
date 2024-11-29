# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c027fcf597e10154a8bc55c46182a4c2480d8d25 -> cargo-c-0.10.6-c027fcf.tar.gz
https://direct-github.funmore.org/bf/bf/38/bfbf38882eed0fca17fb946f5a8f256da6c35cb4d70f83a6b531ea714b6923fa139ab2a3c8bc1863d36c7b00d1e7e7537bab4b1bc0c3ca9e607da9c330f325eb -> cargo-c-0.10.6-funtoo-crates-bundle-76d3ac15d0693877a5a80c2dadeba66c214e7643c6c10a03e784203d67b4c90397653ed96ff76f51e5c6144f8ee415d3646749b49f375287b9f7071acb3966ad.tar.gz"

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