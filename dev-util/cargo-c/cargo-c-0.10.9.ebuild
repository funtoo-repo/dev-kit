# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/87/ba/78/87ba788900bcd2f414dfbfeb7f745f32b96a2e7d719df9e857c3cc070d1034978e3f23b50459f0d9e65e4cec6f0ef08d189a5dc76b3dbe539066bb78bdf8719f -> cargo-c-0.10.9-funtoo-crates-bundle-b284cc62fe44886b6b8559c93b29a973be4a4cd89f920cc41bee077f7c6e9c5a1ff4b596120eba0fa678026278312d59a5fba4baf2030f669977840926210c15.tar.gz"

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