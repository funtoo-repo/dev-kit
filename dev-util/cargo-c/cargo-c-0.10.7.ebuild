# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/63/53/a4/6353a4ff50dcd7b9a529120d6811b89bade9ce0a8f6de7c6ddc4dc4104c415c4d4ba12731ffd8a6117f2c674c9b3de263f07edfe0413e32d967a0265bd20e67b -> cargo-c-0.10.7-funtoo-crates-bundle-d8b1f29b75deab948211bde461a4cf77433cd56fa8fc37081b549e40af0f879d10269854f3e7ef28906c34942bb3ec147b320311f16265dd49187be502a59e34.tar.gz"

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