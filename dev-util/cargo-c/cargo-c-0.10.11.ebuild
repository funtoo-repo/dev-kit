# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/ca/04/4b/ca044b9ec1dafd53424b4557add532e3e978e8ee027b4999cd672daa74239c0769b9c2b4f6ffc9b14aab47cfe6c5f163d81fd4b6e4d1b5211a112918fa23222c -> cargo-c-0.10.11-funtoo-crates-bundle-df697b163bca18b94b3eb1acc74ca5559b3f5ba534db5d68dcbd29faca2dd6520f925a3a1a963f50aa204116394d79bdc38b41d193a6789500d6de821c1c2762.tar.gz"

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