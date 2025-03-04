# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/1c/39/76/1c397670c8a297dcb254d61015caceb8e5595d8596eb8a12000b7da6d151f1cb5978677a194348c963bb81be57f2745d9e12708a7d1a300cdedd2d149d0acba0 -> cargo-c-0.10.11-funtoo-crates-bundle-538ab55963ee3fb664a42828a80f4c31df363399767ebc4b3b2c785c74f9ac043353f4194588a823471a261041d13b284d9018de4f2fa7150254900b7ddb7bdb.tar.gz"

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