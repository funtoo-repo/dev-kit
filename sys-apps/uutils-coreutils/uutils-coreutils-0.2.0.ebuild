# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Cross-platform Rust rewrite of the GNU coreutils"
HOMEPAGE="https://github.com/uutils/coreutils https://uutils.github.io/coreutils/docs/"
SRC_URI="https://github.com/uutils/coreutils/tarball/aee3e799802496a576aaf821867f08a43c3c17e5 -> coreutils-0.2.0-aee3e79.tar.gz
https://direct-github.funmore.org/a5/a4/cd/a5a4cd85c988286372f342b80036ba9a9ad4b12fa31d15452499a910dc9537af6e268091048bcbbbfe1e9a7773a54ad89fae587adc0ffbce26911dd0339c683b -> uutils-coreutils-0.2.0-funtoo-crates-bundle-2ef8193c9df47b30c3e629a628af569e0b6c24cd83f266075c54c0c506657bea43124c2104c2256eb213aab83fe8c898cc0ae739c51db39d0aab4b335aef2c3c.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

DOCS=( README.md )

QA_FLAGS_IGNORED="/usr/bin/coreutils"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/uutils-coreutils-* ${S} || die
}

src_configure() {
	cargo_src_configure --features unix
}

src_install() {
	cargo_src_install
	einstalldocs
}