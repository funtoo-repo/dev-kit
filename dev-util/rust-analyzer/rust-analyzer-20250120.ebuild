# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/248bd511aee2c1c1cb2d5314649521d6d93b854a -> rust-analyzer-20250120-248bd51.tar.gz
https://direct-github.funmore.org/f3/69/cd/f369cd7c87ff499bceabf085b512f8e4f4eb6402fa379f0d2df907d59cc75b3471075c7412a7fc9cbc3c9e6cc8e31dd55386cf947e0bd0376424986451ae4e67 -> rust-analyzer-20250120-funtoo-crates-bundle-14ab1e2f1659fb403cb61e398e3d92cd36a93b679c3394202aee73c76205bf5ff99662abad71db1a9b7f2e5ff89ec1ff7fa3b425639a8585c8b3b9d5e7c67217.tar.gz"

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