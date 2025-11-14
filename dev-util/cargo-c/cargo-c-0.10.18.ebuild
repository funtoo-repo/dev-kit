# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/78a62e7acbe4994040f9c44694b798ac57fd470a -> cargo-c-0.10.18-78a62e7.tar.gz
https://direct-github.funmore.org/b0/cd/f9/b0cdf978786368f124d73713942651ebdae323a245e100eb7cda90968a64a1f90847aeb7f4efa5f893b4b35226874781f61d1ace2a34089e5bc45e9d485b6a29 -> cargo-c-0.10.18-funtoo-crates-bundle-98b0c417133a40a3280ca25ab8d8c5e0ca6fcb3a42092775569ddb8126baa8dad5412efdf318f32035989b4b0a86e8a4ed1fee7299e5785a40e2cbb74b4638c5.tar.gz"

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