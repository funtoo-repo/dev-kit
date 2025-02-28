# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/d8/9f/5c/d89f5c4bc553594a2c3740ab2efe88903bffb714ee961157a21b335f57ee4b79eb17d489d0fa0b0f6d8947d0170b56652353db1220755c688b4ea7bb37984d59 -> cargo-c-0.10.11-funtoo-crates-bundle-e38e338543f0b83c121d5ae2b8ba3d47ac0267a23cab00e606da78848e56157edeaad70e1a93713141b82a24b31d5503c845c992ba9d9775aeeac4003506cfc8.tar.gz"

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