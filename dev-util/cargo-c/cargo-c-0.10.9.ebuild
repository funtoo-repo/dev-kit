# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/e2/31/ef/e231ef7b1822d4ead727b7872ac47380bee6aaef9dfc4e476e546a0dc7853fa7a1b6fd39b15d651404be04c907f25be8d5cb6d06b176610c3200d96203486bb3 -> cargo-c-0.10.9-funtoo-crates-bundle-9e8ae5b7321c474f12740d34b17b365d4dbe46300701711287aa9af677daedea7bd7e669f8d7bcef1ab5caebbb064a4163ff6033c1b19a96d46500655f266230.tar.gz"

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