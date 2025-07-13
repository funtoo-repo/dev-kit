# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/d1da3c27a0defdceba12c2b2762094cdde6c0337 -> cargo-c-0.10.14-d1da3c2.tar.gz
https://direct-github.funmore.org/41/7a/ea/417aea9a8394ea8bb7dc5f7a3c403909339b200607162bc429fa6d825e6bdb8a32467a046f69af91ba37092c8b529ad9902d044510bd2e188b90ed7bddf4a840 -> cargo-c-0.10.14-funtoo-crates-bundle-814fa13e94518743f691eb9b62011fa1780d45988011782b1a0cb398738a3e50bcd912f0ff20c5abe03a8ce950ab5d224c40f6111c9d52b9073a08fd177a6d4b.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND="sys-libs/zlib
	dev-libs/openssl:0=
	dev-vcs/git
	net-misc/curl[ssl]
"
BDEPEND="virtual/rust"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/lu-zero-cargo-c-* ${S} || die
}