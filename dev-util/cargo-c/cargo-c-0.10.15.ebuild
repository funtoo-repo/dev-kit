# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/3e178d5609e5dcc20de3cb0de1bf579329e43784 -> cargo-c-0.10.15-3e178d5.tar.gz
https://direct-github.funmore.org/16/9d/59/169d59a0e783e46860f9da98e186aa15f4ecae1420bad1a3410396ef212e5cd8064d4454f75037f07e958613ff8b12e1d263706ae3837546a4af604f43f42521 -> cargo-c-0.10.15-funtoo-crates-bundle-b21b189f4418f9e449a2e9759c8ad5a2099b011165e08d04fff176aae282cc9a13ec346208e501c4f2803d7a3b5127ef0618f4a58ac535e91342aca8710f9f0f.tar.gz"

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