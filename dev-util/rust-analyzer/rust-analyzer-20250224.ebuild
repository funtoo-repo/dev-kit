# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/6d68c475c7aaf7534251182662456a4bf4216dfe -> rust-analyzer-20250224-6d68c47.tar.gz
https://direct-github.funmore.org/23/44/87/2344879496bb8f373abcd345ff7fa80ce12de76c9f369adae2ab78d77bdaf73265c040a83cc71c6e7311803292e5b1b332e753f023263fd253d38c2fdeea1d16 -> rust-analyzer-20250224-funtoo-crates-bundle-0cf203b598ac6f7fdc4dab826db5878a7e4899fbf3376ebc1195412cf8008ad15bf922fa10565ee2d3c136485e83c88171bcd8bbd3bb2f3e0227d2601bd3778c.tar.gz"

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