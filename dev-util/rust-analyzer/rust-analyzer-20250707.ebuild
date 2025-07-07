# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/0ac65592a833bf40238831dd10e15283d63c46d5 -> rust-analyzer-20250707-0ac6559.tar.gz
https://direct-github.funmore.org/64/5c/96/645c96aa1983c7565f16c6c66a34ea2873cd1c1973a3a14c38e707acaeb93fb67dd3dbb9676f8bf918e02221d4634341e7a7bbd1da751b278c6045c2803e454f -> rust-analyzer-20250707-funtoo-crates-bundle-beaf88fa4baa17d1cb8e43e718d7abc5aa3dffe1847ec761a182a24ab507561805d5370b0b978afeaef6b2440ff07adc6e41f7b078f24967b7c884a72494098f.tar.gz"

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