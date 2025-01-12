# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/db/0c/b1/db0cb1f721a9c4aee6914314ae52e2a98a4312db5bbd13cb098cb2780238f91629ef673e1bf4668c9b7dc078612d145301839540c00486bca5b9f9b00481b596 -> cargo-c-0.10.8-funtoo-crates-bundle-8352a25d97e06316644906f9ed8aaa019318451abfc4c91fd5db75193461e60a3c890d3040d70d984484fad31e41d4a17a7935c28ffe45578d347627fae1727e.tar.gz"

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