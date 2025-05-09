# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/d1b5fb136db62fac3b42ff18c88101ed0e895ea5 -> wit-bindgen-0.42.1-d1b5fb1.tar.gz
https://direct-github.funmore.org/ea/f1/91/eaf191efef419aac532c7ed0e05aa2c3b3f78b6b2478c842d2a04084726f6972ac928a8da1d78bc347e226c500c94772f3b5e35422f95fae830b2fb62976caab -> wit-bindgen-0.42.1-funtoo-crates-bundle-2509a2823f131fa48f4bcdb6a80b0f0fdb5d65619ca34903f0a696f03fae5c97c78c78d732c2886a0b3bf623f3d565c397bdafb1c49a92fc907f93bf0340f462.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DOCS=( README.md )

QA_FLAGS_IGNORED="/usr/bin/wit-bindgen"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/bytecodealliance-wit-bindgen-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs
}