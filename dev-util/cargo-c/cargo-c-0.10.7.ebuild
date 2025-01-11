# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/76/29/51/7629514b836439e600212252a3ee661b8bb54e752919fed07ec181d0c3fa324dfd8c354f69f04c6a042ac910fa54074007068ee376c09a542e1c65919e2e863e -> cargo-c-0.10.7-funtoo-crates-bundle-c53429fd7bfdee01a1722747ca573a92ae9248d2fc4246a61a54cb424a403f6f95e2cd12b8f18140ece838caa9522d48585c31c90613260c0315539423fd1520.tar.gz"

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