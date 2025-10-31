# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/7c810e9994eff5b2b7a78ab0a656948c1e8dbf18 -> rust-analyzer-20251028-7c810e9.tar.gz
https://direct-github.funmore.org/d9/d0/8f/d9d08f3ba22ec36220e02c85fcf789f30b5cac385a425ba03fe427b04a6fc131bcd13f8122d30c7abe862ec817f4dd5c8200fff3e2cc26acf2a01b9e2540f4b0 -> rust-analyzer-20251028-funtoo-crates-bundle-abc1ab61b5b7e6a58dae30751049fa544b73888e81e84c0951c872b66e28e6b1f65797a3d5213e5a802e961d4c14afdd9c66c1bef49b28f39310d829efbb085a.tar.gz"

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