# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/6a44095585f44da2adf63964701748bcef7be6e9 -> wasm-tools-1.225.0-6a44095.tar.gz
https://direct-github.funmore.org/2d/cd/99/2dcd99a239372823d3bd82ac87677c8c656eec94e4ea04e0236280ac0d1b6b932a1df160e4778420279776ea48891db9d71ea2ce5fc54e694e182494bde6749b -> wasm-tools-1.225.0-funtoo-crates-bundle-c6e57fbec56d7fcfea198be8a5806f60def1838b0780a4d340f4219cb17f54e817ad06a5b9ca3d344b9ddd9c8c451681751e2b455f0c494d73a56929081dccb5.tar.gz"

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