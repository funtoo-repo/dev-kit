# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/3b57c001518aeb42511e177221f98ecf42104016 -> rust-analyzer-20250505-3b57c00.tar.gz
https://direct-github.funmore.org/e5/8d/10/e58d105533f6e8e2a79fdf98a6a6d2379b34bae051ef66f0711d80d565cc1645fa3bcfff944d090bdacdfaf2d8e98da04d5083bc414405941160d13a2806db28 -> rust-analyzer-20250505-funtoo-crates-bundle-74fa2db854582a4ddbfdead97f089b6b4368dfbac4231166f7712966f7ec331d6a8b9dde7f3829940eb5aa7ac663428e68f173022bc9059b4f2e3ddafdacf95b.tar.gz"

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