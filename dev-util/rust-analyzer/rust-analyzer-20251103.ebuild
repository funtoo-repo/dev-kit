# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/bacc5bbd3020b8265e472ff98000ef477ff86e4a -> rust-analyzer-20251103-bacc5bb.tar.gz
https://direct-github.funmore.org/d7/63/a1/d763a14662138a8de6c720eda29b5a1d2030c62061a4acda2e8665f135c406a259553b68e7b32daf3f06de7af5c1ced1a935cb3554417afaac79cd3329635a46 -> rust-analyzer-20251103-funtoo-crates-bundle-3a18520450dabbf1cf6a2b73fdaee1d7ef481039061060340ec135b1104aa7102d71f529086f0fa423a3b8685509c4d22e2f7ba81be9f7911fca2f0a2364e34f.tar.gz"

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