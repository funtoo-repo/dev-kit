# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/1ee3108776c4ccd92446303632bd825f9c49e986 -> wit-bindgen-0.45.0-1ee3108.tar.gz
https://direct-github.funmore.org/86/de/8b/86de8b4ff3782394de62d3f08dd41f731379a078f12b10a65924d2eadf017fe6cde7c2b6612921d5704089462b7e74e8dc55069b8fb012e4dd391350989cac4b -> wit-bindgen-0.45.0-funtoo-crates-bundle-db5cdaa82db7c65e99fd197fe1d022d0b59654b326ddb22d19432e643278218324ffba7a35ead05a2370809797093f5fec267173db4394d1d0b1300846af9eed.tar.gz"

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