# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION=" CLI and Rust libraries for low-level manipulation of WebAssembly modules "
HOMEPAGE="https://github.com/bytecodealliance/wasm-tools"
SRC_URI="https://github.com/bytecodealliance/wasm-tools/tarball/892d4b6ef074688fb673ed634741316e0ea455f4 -> wasm-tools-1.222.0-892d4b6.tar.gz
https://direct-github.funmore.org/fb/48/5e/fb485e8c929b32539176c37d014e9119a3a5c7ab6ebd796c6e9e64e11e5dfacb5a30a423f87a15739e62a08db3e20f10072e0aabd09476510829ff37886ab85d -> wasm-tools-1.222.0-funtoo-crates-bundle-131100062e5aeed57025a0969aa488e57862fddc50daaa76f134384a3d5e4fc66b1498ed5fc04afb047289c7766f8a6dc21e8222e7f0df5d073fa082e1c59197.tar.gz"

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