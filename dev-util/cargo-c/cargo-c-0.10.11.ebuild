# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/c0/bd/9f/c0bd9fe2c18d8013bd36eaa1e19916ce9ac18d6c42501207525f725c07e8d06b412274ffb28406a2eb34dd662c4773619322b866f4e2eda334e84f8b9c923430 -> cargo-c-0.10.11-funtoo-crates-bundle-314dc8872f8b2aa64eaa68e204bc7a51d3285fcf7fa2f2bed07b7d3eb4c35b4fc6c26ae12311fbdb0f370d3d4b1126a948647cd89288be3dcca13b73a8757176.tar.gz"

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