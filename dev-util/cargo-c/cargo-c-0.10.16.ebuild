# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/5091d9613fc6536f2beb0e7e037597fe0e0146bf -> cargo-c-0.10.16-5091d96.tar.gz
https://direct-github.funmore.org/b8/f9/5b/b8f95bc011373f2780f769a8d45d071b7714c53af5d4080ad99ce64bfe28627fdac8e53b86ef9da7e7a1717ae0f059e8bf0b2beff3bcf94b78b5b8a69d3192a7 -> cargo-c-0.10.16-funtoo-crates-bundle-d66b81ed48d17022511bd3fc0810931c50ca7cd7740a70f5d6a2c9c7ad541389e98d5c6e9fd6a5c0e163e06ae73a0739bff16c67664bd372953828359c51bcaf.tar.gz"

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