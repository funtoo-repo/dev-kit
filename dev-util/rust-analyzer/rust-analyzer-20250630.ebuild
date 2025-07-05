# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/6df12139bccaaeecf6a34789e0ca799d1fe99c53 -> rust-analyzer-20250630-6df1213.tar.gz
https://direct-github.funmore.org/0f/4c/d8/0f4cd8cdde967a6f07c3eb3f140949d6f8ff8cc21960183555d6ff3874cbe7ba2000a9beb4a6fb1cef932f47b81f8a7f3a840ee4843b65f35540bb7c7152dcfb -> rust-analyzer-20250630-funtoo-crates-bundle-847c9bb1bb632e2ad8baa11c279b596844dc73643b0a73ad9a30c2034252a5fb8181f79f13f274d95fe05457c25be5fd7fb6bd3e7bc700de7a589547ea421d90.tar.gz"

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