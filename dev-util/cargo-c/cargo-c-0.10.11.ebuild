# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/ab/95/19/ab9519745d6077c72a3857be267cbda33216224108b095352b836be05b3724b0d5ac48ef7ee01571d8f503783cab3fbd2347e2b021c246a5624d4a919637f1a7 -> cargo-c-0.10.11-funtoo-crates-bundle-04210f45d4d0852772b606071185503249e0cc3e7390d931cfb02e2dbaa781f6db2071fe217be8cefbf447d0bc2ddcb631296c9c3ced28d7ce3ef4e4ddfc24cd.tar.gz"

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