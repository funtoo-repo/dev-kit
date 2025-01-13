# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/5f/9b/e9/5f9be945a105e053185722f41a70d741dfd96f6621dd8ff46a10064699ae7221610638d73cbb9f6df5ffb0a015a25bd3c610ec0934f5b5c7a4ab8705b5759a56 -> cargo-c-0.10.8-funtoo-crates-bundle-58c3a61cdffedc076cc6078efe5d6ffe8c5e02359e9316aeb5e84aa40d42ae744ea4e07989a174c32341fb8d4e32a44afbbbde72fecd68b057b51fb140dac33d.tar.gz"

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