# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/04/4e/4e/044e4e1450c5e1bee53e83091afc61142e40318f1113826838e97e9864b84e3705cd0799e8671aed6a2c01c093d35054128ebecfb59f0fb75afc2004c1524e65 -> cargo-c-0.10.11-funtoo-crates-bundle-c2e5bc651ca2e9f5557be98fd7b9f188e44a6a1873b7a25d6379e725d1a82d9fdd75f917068c1a5c1f0e5780f49b1b6472306151a924dd136c170f741d466d8e.tar.gz"

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