# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/27/44/2d/27442dd0eddccb09e158f6470bb152c4c2246929e4369e0d0ca496f9afa4b4a68008e83df5d0d5fbf230e64187f593e4fd17e8f10e78b91e8d85df15dca547c6 -> cargo-c-0.10.8-funtoo-crates-bundle-08f57c35e667b22b3551cb5c010e9f85797d7dc712a64756669680e541e675920705dd27e3e96b15715419638082b42aca4759a66cc7e811ff6d955ac2f5abc2.tar.gz"

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