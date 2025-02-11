# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/88/4c/02/884c02304348b49c9f76dfb4ebb72518c49c48706877e367672f3f8148aeb9965ed4661f3db7f5df93973277c84643b7f3bcc9f3fa9462f5322eab4ee94fbc25 -> cargo-c-0.10.9-funtoo-crates-bundle-e044bc650db783d96ae52f35f3709bb00260dc071d79d80171c6ae1f9dfddcc08d4a13b1be54029f4669d0a6ec382da3a838192ee018181b9b68e7caa7017ca1.tar.gz"

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