# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/6b2e677795722dc95b9b5dbd2f38ab4e0cfaafc0 -> rust-analyzer-20250825-6b2e677.tar.gz
https://direct-github.funmore.org/f2/c0/a8/f2c0a84b780c1f06c77ffa6d9caf86be5b79e9aaad657a8040ab2d72cd4634d81c94b86df99b59e6338908bbe806853aea36da1aff6ad1ae330d2850814e45b2 -> rust-analyzer-20250825-funtoo-crates-bundle-836f4d4b654aecaa6abb869c9893a504f31168311241170edacf02a557a2f031fb8bf4a4af6a4bd219d8f4b5d86e9583ee2cda38dadbc1f4b99cba7bd6d8d590.tar.gz"

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