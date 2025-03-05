# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/05/37/b6/0537b6e67595ef3a767f5903941ada778ad54c61620451b94ee48a66a3fee2e6fe38b1122aee0c15bf6e76880c166e99ef3b1302a4facc82fef5965184cc2daf -> cargo-c-0.10.11-funtoo-crates-bundle-d7e01cdb5a21824e89507c9195110a2ac07ab777b7535dcae3cf34fc08cca30a56ca36f088921ccb20529bb1d019e8fbd5ef06675b37c71a796fbf98b2d03a6b.tar.gz"

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