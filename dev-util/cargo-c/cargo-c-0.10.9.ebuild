# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/c9/68/93/c96893fb42539a0eee17ff7177d9879b58fc17ba80b9efbaf177130fa6ff67c512236002e2355a88f9bec0c2f36823f857ef1cfc5ae226913c1fab8ced84c812 -> cargo-c-0.10.9-funtoo-crates-bundle-9e2294f9caba9bbaf6252a3ec60279e2cce79d7d7d340f7669c40889c3e868aaee3ea4378e3c9efff32d520eb5ad37efabd795a5b217c92bbe67081460ff60c2.tar.gz"

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