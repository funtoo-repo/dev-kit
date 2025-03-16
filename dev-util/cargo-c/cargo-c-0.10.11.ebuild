# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/6b/36/75/6b3675864ac8367d786a56bb23e047a39838a3be90bce62f78ab8941c66ba218ea0a53099d6ec2540fb2100813d8989d04dd653020811b98449788e287eb057f -> cargo-c-0.10.11-funtoo-crates-bundle-f1437164aa5bdb67df1e5be5a6b1336ca81401b2d40df9790b8cc7deb9b058a5ace7a87b68b131b3146983ebacb7ff12fa48f358dec3b5a5b3050a1f1d9024ae.tar.gz"

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