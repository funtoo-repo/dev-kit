# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/af2d6e8d9086efbe00258bbdac4767a46ae9ee53 -> wit-bindgen-0.35.0-af2d6e8.tar.gz
https://direct-github.funmore.org/4c/52/3e/4c523e1d0dfeabf83f56c02deae67c92c5a18e35737b2f480135e6ef4f8030899cce1099ce7794f56d04457e3649469cd1cfa67e925026f9a94b2e7ef1f0327d -> wit-bindgen-0.35.0-funtoo-crates-bundle-3dadad56b92ee1f620e95a06af866e3e06126b9a6d3c600c955548e28b9ddefbbfb08f0f6371cad5e34133074b3b4475e9d2b97396e66381548936fc89f652b8.tar.gz"

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