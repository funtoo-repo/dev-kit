# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/f1/77/c9/f177c908434190747e48a3a5d6bcfd9edd00e28abdfd7d299e92aeb94554a0585830bab112d9b7467e4ae074d209b69b97ef157db1d1c0bbb5ab67c6d9c464ef -> cargo-c-0.10.9-funtoo-crates-bundle-64ffb51e37c33e0d5faab0e29c2e4c7a93bf8570ada2b5a29d0e1b42ab1b872a0ae41d0641175bb533a108625ffaabc8fc43708e6cf53797cfbc48a1e4543013.tar.gz"

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