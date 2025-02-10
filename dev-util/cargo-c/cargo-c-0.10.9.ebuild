# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/3b/68/c4/3b68c492ef198010f884ae6efa6c3857db45030f4a2dbd1e2355266bae20406384055511089dd659b2a0341961967d772aa434af1ad449334c08195a9fd0e5c3 -> cargo-c-0.10.9-funtoo-crates-bundle-f5bd5f9c8658018e566b3fdec4fb8ca332b9f38d17dadade0d478f04777f6ab190b71df9731bd2e474ea1a4781a97954085c6ee50c70670aaf76a4fc120fa876.tar.gz"

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