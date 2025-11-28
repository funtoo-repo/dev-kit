# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/4a2b38f49f2c15f4302502027b6ac09914679a8f -> rust-analyzer-20251124-4a2b38f.tar.gz
https://direct-github.funmore.org/08/14/aa/0814aac71f6554c15a7e187fced55c74ee48d9b781e76b33ca9c209f48e6359b21d969d1b066b70aa975dc346c4dc02887683f7c987c25f8379f7be46c5f379c -> rust-analyzer-20251124-funtoo-crates-bundle-516912830d0df325d2563587b5d452cbeb6710a14dc74e103e1617ce802f46c25a82196864748fdc1b96312682a9209f99c3b55761d3e9e61afbdd4b5abc3237.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/rust-analyzer"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/rust-lang-rust-analyzer-* ${S} || die
}

# To populate a custom version for rust-analyzer use the CFG_RELEASE environmental variable
# If this is not set rust-analyzer --version will return 0.0.0
# Upstream code reference: https://github.com/rust-lang/rust-analyzer/blob/master/crates/rust-analyzer/src/version.rs
src_install() {
	RUST_VERSION="$(rustc --version | awk {'print $2'})"
	CFG_RELEASE="$RUST_VERSION (-standalone-funtoo)" cargo_src_install --path "./crates/rust-analyzer"
	einstalldocs
}