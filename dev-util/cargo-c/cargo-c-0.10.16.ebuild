# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/5091d9613fc6536f2beb0e7e037597fe0e0146bf -> cargo-c-0.10.16-5091d96.tar.gz
https://direct-github.funmore.org/63/fa/42/63fa423aa0f9af805043e861b921a54dd8a026ffa5fe3841fb29670cb156e96f05a2d6b6be14ea186cd0c89ca66954f60e0bf42bea90d073d0c7b338eaa27f7c -> cargo-c-0.10.16-funtoo-crates-bundle-94edb8834ccff838cf59348cb906441f887bae0a23978ef53ce126d95acc30d573bac19d2d07dabca9cf79175371c1270891f69aed58051acc58e1f0735cc8bc.tar.gz"

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