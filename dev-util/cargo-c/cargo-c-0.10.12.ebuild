# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/7a/1a/b5/7a1ab5822fad10cb6bfcf3eede2693b6b6f302014f4a6a3c0f75dae8a0b22919b5bc0032881cb7ef83c4dc8916e1282b6e3eb7e1efbbed838813097c04cec267 -> cargo-c-0.10.12-funtoo-crates-bundle-6c007109dc246be2861c60787a205a365895c80db5691e5cd802c50b9d243ebc7d655bb0584a33301d539ec335ef7acc1304d5602c21f8ca2abcd3159c33842a.tar.gz"

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