# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/fd/ea/c8/fdeac8ca2e631620f5a8511bc07f7e065f1cc87b86f6b24a13857612924d4e86f98c95a52e2440d75d23d811817578080b14275dfce69d39fe9b8a6303524767 -> cargo-c-0.10.12-funtoo-crates-bundle-5142b61cf00a569873638cd730da4e70c36a4ab2b1c6322addc700908af0d57b2d1aaf0bb1cd2239b3bec63b1e2753fdb9e674d2db429a1b8f027158905173e9.tar.gz"

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