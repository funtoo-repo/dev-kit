# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/ba933bda98214ffe2ae16c63b2b91d0932021bbc -> wit-bindgen-0.49.0-ba933bd.tar.gz
https://direct-github.funmore.org/8d/07/58/8d07585c1003bad98eab251aaa60aa42efd4797fc4bc9efcfdfa429b94d08acacc3f7533be74a31b42aa962b4122951aa9f91d3ad0da1279ae24969dd4ee6540 -> wit-bindgen-0.49.0-funtoo-crates-bundle-1fde5cd87817bba22462f03b3d23eb5a609697a0bd4eaa9a9aa0c10676df11ac1a0767fe4cfa45fabb1fa483c28a2726f375de107ddc1dc39ac304ee3b3d8543.tar.gz"

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