# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/7308476bac5cbc1d5a98602e1aec2dff8711b0ba -> wasm-tools-1.238.0-7308476.tar.gz
https://direct-github.funmore.org/d2/86/f9/d286f9758f304e95dbbcdb025ea759d2a39d33a11e45b3751315b0490747a03ad8cfe5349acbc3da22351f53d60b03d01c831300616a586a51b3f4a9433a871f -> wasm-tools-1.238.0-funtoo-crates-bundle-728e8f0ab030f85035aa82153eed0d5ef00abfdf46bac0df9b744b81ebdffb3f765fa4daded7fc61177c83c018693c4984dc39a98e0444761d50828e1a3005a5.tar.gz"

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