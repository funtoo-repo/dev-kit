# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/e1/e6/50/e1e6503ed403c33d9d6247898b03c6857fd388df5532e006c00eeb3d04c4693b7d35fa895609e24d3a8f896563edcb21899c7ddd8f00a22793ec2c856de7b626 -> cargo-c-0.10.11-funtoo-crates-bundle-676ee849833e84b658194c76bfcd70bd90a47fbfe9e30605cc466290207fb9dcaad31e7a3f4bec850ec7181595aa00c48a26ff2e5ff4f63896b022edb0cb3f9f.tar.gz"

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