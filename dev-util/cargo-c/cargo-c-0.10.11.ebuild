# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/70/5b/21/705b2172f0c007255fd773111e8503a6b825c1f894da626beb48c5ee890ab8a7190057ef8896a9d0ce921f380fad4b8cc1e051c8aaf7f25a49525afbe7e0a909 -> cargo-c-0.10.11-funtoo-crates-bundle-cddb177c36e214bd56e6267145e0cdc152c4aacc8e7040982bc59c9314836536998564cf681076fc64e854f43cc2172b78a082d5c5c3d91795755b91dea1c009.tar.gz"

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