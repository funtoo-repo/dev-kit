# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/aab1ac81bb31762509b5ea4b39973070725b5d73 -> wasm-tools-1.220.0-aab1ac8.tar.gz
https://direct-github.funmore.org/e4/cc/ad/e4ccade5f688a1d8c2e5f0b9ae172f287ac836cbe86e297056dad10212ece7827686d0d2f9e10dedf80c9e2352a45f7bf7c385fd88e0eec23cd4b0b28fa34e36 -> wasm-tools-1.220.0-funtoo-crates-bundle-96188214039ea6e1d2c26a41e863d2bf200d26baa0aae396780627e081cebe73b0c08a5fa9867fc6c069751a1ee7df6bc96c725884b0b602328850e795bc5852.tar.gz"

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