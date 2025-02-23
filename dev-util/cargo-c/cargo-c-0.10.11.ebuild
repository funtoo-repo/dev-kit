# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/de/0d/2d/de0d2d44b55162a7824d942d5f2a2fb73673c533dd43dce019792e906da1afa1e96de1fe0fc774c64a44effe14446e6c1ef24b3b4ef136d6a9e9a2c958fabcbb -> cargo-c-0.10.11-funtoo-crates-bundle-105380d7a8711dc58db7b4a02153aa2473a9b0c18271b88a55c0ab22ba457c57ce2b59e1663a2f36773556e86cd15b8ec194ea081f0fe4519b47c9d6cceb2740.tar.gz"

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