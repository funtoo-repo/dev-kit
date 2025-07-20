# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/591e3b7624be97e4443ea7b5542c191311aa141d -> rust-analyzer-20250714-591e3b7.tar.gz
https://direct-github.funmore.org/c5/f8/36/c5f836bb1ebb20830e3a0638869ee83d7e92216c22c4bcc13cc529948926ea53d7ef48d5e4bbe97f7cb2f61222cc1616165de54380bbc104b40d12de9758178c -> rust-analyzer-20250714-funtoo-crates-bundle-81bc8a2150d4545d344e9b328248f38c6ad742fc2b2d8dccc1abd5fefd55b3e427de94b73e8ae72cefdcfa31d29ffe0d6bd82016840417b249634097cf126b30.tar.gz"

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