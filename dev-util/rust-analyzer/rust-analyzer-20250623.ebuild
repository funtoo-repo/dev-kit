# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/ https://github.com/rust-lang/rust-analyzer"
SRC_URI="https://github.com/rust-lang/rust-analyzer/tarball/0100bc737358e56f5dc2fc7d3c15b8a69cefb56b -> rust-analyzer-20250623-0100bc7.tar.gz
https://direct-github.funmore.org/97/4b/39/974b391914c97a2b84dbd8a3b5173aefb87e4a8bcc180f112673b903b042234ac0ddc4b00b6fcd7d9c750e26770352332c507cbb210c982cba12e4a0990fbefd -> rust-analyzer-20250623-funtoo-crates-bundle-7e8cafa7fec94cf32c7a73150ce593816873085bf633777e2b2e9aee56c604aa3274ef26379f8374f0db8eaa3a090948116c74386ca1b185a21b21ef7f948c93.tar.gz"

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