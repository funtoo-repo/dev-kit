# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/37acea8052d5d27e7f1312d9e6e743a9da176c21 -> rust-analyzer-20250324-37acea8.tar.gz
https://direct-github.funmore.org/e9/6a/a3/e96aa33a02db396eb387cf56d33ef5c416d9006e146dfaa55defaf8183c3454790f84a338533ab161339590704a9bebd05af29b10259ea41f25d8d6ab70b9149 -> rust-analyzer-20250324-funtoo-crates-bundle-6820faf0b530ddbb5276a2ceab02f5d7303aebbed13869b509372a559a36ebdb8c3fdb656056b04e32bb515616b775763ead6d5421dd653467a1e149a58e5e3f.tar.gz"

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