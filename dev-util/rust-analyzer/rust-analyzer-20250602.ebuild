# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/2a388d1103450d814a84eda98efe89c01b158343 -> rust-analyzer-20250602-2a388d1.tar.gz
https://direct-github.funmore.org/ac/ec/77/acec772e2209047be401d7af14ff087d5552d1ae977c343ae9e21877679438a15d124e45341768964695362ce36f67b2610e6bcabb974ec33145a10c571e0393 -> rust-analyzer-20250602-funtoo-crates-bundle-322fd17ac1a458c49cc9af55b80ec30acf64c41acd7436c01783823dd59408486eba268490799af8d6b40f68f43b3e6d14e8a20606c6387b8e8adb03b92ed716.tar.gz"

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