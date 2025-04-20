# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/fd/12/e9/fd12e9e9614ec3a4d1aa26c7da34b43766c2c0c488b3dcc5c73f925a550f57dd871bb80bab59bb7540651a7cda544696d425e07e94d7a188bbc24de46ef01e84 -> cargo-c-0.10.12-funtoo-crates-bundle-e9ce2720f6ce847979220d43feaaa478bf5127e149800b7a643fd2f15eb4cfa5c90890f6362de3b383ecadd188576d43d8d6c6da7b8e9f7ad5d8482e8b34e08c.tar.gz"

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