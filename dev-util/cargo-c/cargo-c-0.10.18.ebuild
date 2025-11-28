# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/78a62e7acbe4994040f9c44694b798ac57fd470a -> cargo-c-0.10.18-78a62e7.tar.gz
https://direct-github.funmore.org/ad/8a/40/ad8a40d432c6bfe189d2ae8514e6d735a994bd302ade5b5c76f3112c8ae593a56e0cf60c66b62590023bdf96698940778953a20f8588f759113f111dfcd5d8c4 -> cargo-c-0.10.18-funtoo-crates-bundle-21779ae161992047a5fd0d245864974904cc348cc6a6edc552c3397ba39591646644b169c37399e89e2acb5faed890d5bff72a3c990ced8e9b6bde1b3fe20ec1.tar.gz"

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