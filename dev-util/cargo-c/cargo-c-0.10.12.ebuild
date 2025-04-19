# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/b9/b7/29/b9b7298d60a3c2cac70de2d93e75317ac85561dc83e039d37f5bff790135c6faa16ca1161ee9137c9938c5ed5ec03efff5e8d5131be0fe649c7a9da9333c3bbd -> cargo-c-0.10.12-funtoo-crates-bundle-df749fca87526a9bdf11f88bf0abeab1f1323defe7b20fd5d98a93ddee5ed79e0e49d3734f0ed8522f8bd3a4c7e64b2d976303d39f1fd6305aec58357ed0df17.tar.gz"

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