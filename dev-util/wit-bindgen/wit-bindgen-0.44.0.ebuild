# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/62a2af5db9b594cb9e3abd4bca507d900c9345ae -> wit-bindgen-0.44.0-62a2af5.tar.gz
https://direct-github.funmore.org/5f/c6/a2/5fc6a2e387860773d4f163b5a65b28359e9b6c662feb13cce7c112e756dab164d1c9527ae8f7a24c288f6bfbe3580fa9a804539e0096f79e58e43913e71a7e96 -> wit-bindgen-0.44.0-funtoo-crates-bundle-8d56dc329dfe0e4b7749a3e2d2bf8e6aa2042a9e115ec6de3ad35313771803a368210548490db4ecd60ad43746b99394accc0b62dbe78474c38264ff92eb3fa1.tar.gz"

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