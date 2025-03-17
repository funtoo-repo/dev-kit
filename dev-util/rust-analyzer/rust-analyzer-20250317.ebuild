# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/b0632f749e6abf0f82f71755d7eaca4884c1a808 -> rust-analyzer-20250317-b0632f7.tar.gz
https://direct-github.funmore.org/78/17/d7/7817d77d88316117c8dcfb81c24f13dd7b4b7c827f1a24a639924f3fcc01c2a54ebd7c86a0ce9b6166c08a658f6d4c5ab7924526ce25df4f57518eac7be63086 -> rust-analyzer-20250317-funtoo-crates-bundle-d672db9af23527addbd3a8f1b73774473f8ffed3a51b3b7c6ffe6c4f89d3a5a3d4940f61553a83b09c148f4dbce26488eb197cd49c34c7b74fb6d13a27d72e0f.tar.gz"

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