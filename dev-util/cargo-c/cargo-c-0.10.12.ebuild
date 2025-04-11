# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/56/a7/89/56a789b9be988c1dc8416ca8e7520dafe28811b21e4b05ddb3437cd9be9d67d46cb0bb08aacdcd20b6d8fbbbbe7c1838a21576dc25e6c6bd622456646c1ccba1 -> cargo-c-0.10.12-funtoo-crates-bundle-804f353b2c1d3481e4b72d04c7adc9c7cfe4fae07359d2f675e226da635270b15c699006b7621bfe20111f06a3e95b75657e96a3915f48b34fa05442aaab2632.tar.gz"

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