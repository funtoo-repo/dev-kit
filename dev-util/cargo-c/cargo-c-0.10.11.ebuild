# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/f0/67/23/f0672305ad99208ee554a0e36bb744e366c2f287beef2e4dd80d6d1cb84d0f07d5da1edcc96fdb20517c335b9816b327cad37028adf9bcb3cc8ea6b2aed9e3a2 -> cargo-c-0.10.11-funtoo-crates-bundle-b87e090e940c04be818c8b19d4dc8149130b094d92e505544b68c6e592fb5e0c9d6dd8f330342b957ec1c542a5f197ec6f956e978ebee3576a1f3526c9702434.tar.gz"

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