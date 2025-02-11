# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/ea/37/07/ea370785153f6f89eecbac2923ee0fca5e5646ad04b6b8c489ae0152810a5522b0ee5117fc8b90848243052cc52c9419ada9cecfec2267ca7b1d958980818567 -> cargo-c-0.10.9-funtoo-crates-bundle-5305071ad47b92a895eea6238de84eebd6985eb9b4c21a03a85310b2f18ed67f2121c335c57a3e29173d173992bc056a59d880d7c1de25d22de0ecf55c74d2de.tar.gz"

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