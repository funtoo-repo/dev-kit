# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/d1da3c27a0defdceba12c2b2762094cdde6c0337 -> cargo-c-0.10.14-d1da3c2.tar.gz
https://direct-github.funmore.org/59/0c/57/590c57e8c04f56dd3e5c71c72f50a83351fdcf6aa0d7ff946c328ae8f6f093fd286acb39514d4c38eeed4dc83fdc89fff5040190438b52b3f5cf19b741517317 -> cargo-c-0.10.14-funtoo-crates-bundle-6ecebc00677fb062ca525f9110f20c72ac4693573bda11b7165f5dce9fbb6718710afeaafbae91925dc28d7d58a1ff994dde4256936e777fa420718a1725201d.tar.gz"

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