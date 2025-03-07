# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A language binding generator for WebAssembly interface types"
HOMEPAGE="https://github.com/bytecodealliance/wit-bindgen"
SRC_URI="https://github.com/bytecodealliance/wit-bindgen/tarball/1d0f202958b9b066dbbe8b1a73751ee3cebc1cd3 -> wit-bindgen-0.40.0-1d0f202.tar.gz
https://direct-github.funmore.org/20/e4/e3/20e4e32660df1eb9a481fbfef4fde1965bf60ab5b89fb34ef40759d0dc43a1f42705419759855ce9e7521c24af43437ba848f96c4edf9512d38fd3b7ab7fe736 -> wit-bindgen-0.40.0-funtoo-crates-bundle-563a938c1a5bf772beb0136d57b62faec52fdcb6626fa9dfd98c25c7ac282b983d602685509b67cd5c9a24fe95faa2dc35b677cabb9855c7f73848eac28181c4.tar.gz"

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