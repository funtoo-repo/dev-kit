# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/5e7dd31c80d5821113ed9c9aa1616a73a63b49a1 -> rust-analyzer-20250310-5e7dd31.tar.gz
https://direct-github.funmore.org/00/6d/3e/006d3ea7930e1db0c4fce3d4ea30ed4b9f954597f0e67c432578792e4b58e497297bb135471668e0edf4bf78e6157ce96f3bc3d40f56c46556410515ce022e6f -> rust-analyzer-20250310-funtoo-crates-bundle-50b6d425f722fc927a9275d16fd503b5909c40ba89cc7d8e415e972e6f9635e0413bfea4cc3ef44a66655c8dc23ff2df5d2f7d22a2da0437f7f806b5a8bf394e.tar.gz"

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