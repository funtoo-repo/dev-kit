# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/43/a3/c7/43a3c7e9faeb7a226f8feabc4db8d396839e215b9007d54152ca240938c960ec4cd59f31612dde6a89324e061637c28f93ab0425f7215041f7d6ce6103674fdf -> cargo-c-0.10.11-funtoo-crates-bundle-74d765214155b3ebcbe7cd085e2cc15d5c3f4de981a95a833770685cba64b8ea096afbb82a4cd58cd5c57e3bd4ccf9768dabe7a1813540dfb103c51e0044c118.tar.gz"

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