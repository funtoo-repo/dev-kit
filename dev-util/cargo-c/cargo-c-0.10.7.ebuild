# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/fb/20/a0/fb20a0eeef6f9e7e3d363c435a282c9f8330ab374bc3c1a112f758c79ad90e23e958c385ce1137523829e853214a7a17d183bee2494f3d40913f110053deeb56 -> cargo-c-0.10.7-funtoo-crates-bundle-0ecac3dd9dc177c05535e2e4e042300224d8e7f6737d1d0fd68605246246968f8aceb403d437341c14a4fce3d11e8fdb283a91527459f9a9c54648feb4762adf.tar.gz"

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