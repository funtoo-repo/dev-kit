# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/4c0e9a4edb73efb7b41758562eb0055c0e99cf92 -> wit-bindgen-0.46.0-4c0e9a4.tar.gz
https://direct-github.funmore.org/bc/90/36/bc903633ff6d151c0524188bbd32c2bae754a7ef936969c8e4216c16fcb15511326d4ce69bacd5d0f91eb83e979dbb21dce77d9bd1242a51fb822a1436aaece4 -> wit-bindgen-0.46.0-funtoo-crates-bundle-60c6267abb37366bda6deb868634a9f348b1e8b64a4a58f14fd5c50b312226b80f205df4cb71321986aedd322debed1300cd4cc18494b9dd55ab1956ec78a971.tar.gz"

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