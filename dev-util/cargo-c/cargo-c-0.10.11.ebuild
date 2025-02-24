# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/f1/48/c6/f148c6bcb8efb83b1f466143aa0c4d115a0762f96e286f193cf5fa585a336392152b829ebdaa4232cd0eff7738d6a85494558d723dfb4dd4ba1a776c7c114970 -> cargo-c-0.10.11-funtoo-crates-bundle-7b13bb9fb3fbd6426dbf9cac5bc231b932379fe1f572360a2282803ac42876f2df833bf969ea80fd993e9159f6890502c5eb0fa297d79fef38c0d1c7ecad7811.tar.gz"

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