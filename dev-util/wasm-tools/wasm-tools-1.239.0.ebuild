# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/35f8671bce74190ef0b00ce36c399b053b490374 -> wasm-tools-1.239.0-35f8671.tar.gz
https://direct-github.funmore.org/1a/a8/50/1aa850a7b16d4874225ce7e053b45955e9fef0b398e8a591b3b73c4d1a27eed6191531bc1ee6cabc0453b62a996582dfe820708692acc64ce06dc5c7f02d41a1 -> wasm-tools-1.239.0-funtoo-crates-bundle-728e8f0ab030f85035aa82153eed0d5ef00abfdf46bac0df9b744b81ebdffb3f765fa4daded7fc61177c83c018693c4984dc39a98e0444761d50828e1a3005a5.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DOCS=( README.md )

QA_FLAGS_IGNORED="/usr/bin/wasm-tools"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/bytecodealliance-wasm-tools-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs
}