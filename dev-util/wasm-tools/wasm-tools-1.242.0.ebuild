# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/8ebed07de87638d991e144fa5b79b904b1758987 -> wasm-tools-1.242.0-8ebed07.tar.gz
https://direct-github.funmore.org/f6/6f/c1/f66fc1163905e32f03c7fb4e7deedc0ff11cc8c8b76260af474956840d65a82e6868a96b3e43ef376a37e5745394d53ead2ebe0de32af11cacbe058a3a00af79 -> wasm-tools-1.242.0-funtoo-crates-bundle-d47ba3e9beafeaee2fc4dc11f5b06bd47aace96de81523d2167e702f25b3846a5ac3cf2fd62dede625095a141517a6cfc77e6403c4379a99cd7402b4bfe5734a.tar.gz"

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