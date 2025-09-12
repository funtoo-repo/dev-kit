# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/3e178d5609e5dcc20de3cb0de1bf579329e43784 -> cargo-c-0.10.15-3e178d5.tar.gz
https://direct-github.funmore.org/d2/b6/1a/d2b61a03831a83dcb5593c8be8481b95f06f2583d969253f31329e74ea6c979198a9653439481ea3af0261d6d207f4a1a6aced14e7e4282849fd677a7b4250be -> cargo-c-0.10.15-funtoo-crates-bundle-51490b28a2f1928e816536ecfac97a2ca3a81285331d67c134935a43814d26bc252227bda177a585aa6905b07f4f1535e78e85f5cae1d2dafbe5073e46af3a95.tar.gz"

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