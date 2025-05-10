# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/07/03/35/070335d90afdb763027fcca943e72b2f2c81ae769dfc58dcc32f3641fd5041f95fdbb8d9d2c5c510544c65f22a921afa706956a59780db6ac69f9a22975a5e02 -> cargo-c-0.10.12-funtoo-crates-bundle-7b5340194b125417566a0929a84ef10460e540975a9d6cd02ea708ef3a63692e918b18d193ae387c9ffc1e2f2b657eb0d8900d78e8195748770397580dd1e903.tar.gz"

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