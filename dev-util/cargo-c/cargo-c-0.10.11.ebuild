# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/23/9b/18/239b18a633bfc95f1dfdf7c75f14716a90ba7d323a045cdfbebe6071eb35b2a4baa1dbb25e33527e24250da388331f5a2e799a21dea0c202cf7c456a098325e0 -> cargo-c-0.10.11-funtoo-crates-bundle-0bac4f1ba704e46eca41bf59c1a5038b8c9a2a9695667935ea68a05d2e9735956abc9386a6d8c25df94fbabcb3269484d62a185a1722172d69c140496e0ecb5f.tar.gz"

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