# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/d2/62/fa/d262fa88787fd7938e8a3fd5f22e8e08de8b8dae36a50c6d0c6079d8e37950edb8475b71f9c4198d1877ef1c4921a929e13bdecd96e41535461095ae1a5f24ae -> cargo-c-0.10.11-funtoo-crates-bundle-5781ef8412197f514d3ef3e44c21dbe9393af1712ac4f599c5030e0998d1fc3ba3e299724cd7eb3654a5ecf88e24673e20afedfc6088bb0a1519a80d02d4dbc5.tar.gz"

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