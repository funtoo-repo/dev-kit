# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/80/73/2d/80732d57355f88f73c35665cb2ac8474b2ade51f96c4af7143d7274152a63a1aed0d13de1e80c14fe07ccc7bf31daa908189a16d760260e9cb97c66e1cd1e315 -> cargo-c-0.10.9-funtoo-crates-bundle-b2863c39b7b6ce2833aa7f9a21d3ccf4f03d4d6f414e55fc6b4424ff1b38e2528039d9b6271f5a97c03f98dba225cbd07d93d3231f0f320407903d54effd55f0.tar.gz"

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