# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/4c755e62a617eeeef3066994731ce1cdd16504ac -> rust-analyzer-20241209-4c755e6.tar.gz
https://direct-github.funmore.org/f1/08/4d/f1084dd0e1a731fa1ad3f62c06188967ce849ce5889357c5ac1a5e833f0073feeacb80e4ebcb3a3a820ac516607cea1bca4a22735f5eaaa0c4a4dcc19525a4f3 -> rust-analyzer-20241209-funtoo-crates-bundle-87d05a135222bbde9905e48e55504fa95b24c0494c447a9ce617e161d95a0b9dd4f064374dba1fd13fe8ef117329ca436ad6e50a4c42f4d4a31ca6349dd50e51.tar.gz"

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