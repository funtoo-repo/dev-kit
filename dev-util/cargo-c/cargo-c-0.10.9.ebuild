# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/a5/98/f6/a598f6b9bde25ee0db62f16f4ffe5b6917ee69b79c124e40748ca7af561640d3a2de9d5f983229878ca9c4ec4c8dd3fd9865783e5ec9397735e03d2ea656ef28 -> cargo-c-0.10.9-funtoo-crates-bundle-1eb9ea5dd7dab064705fae4fc363afcdbafffb97928a49cee897956178b61e3bd42435b204fd5a02576bbaa296bda895b2c782ff171f42333be824935e55b6ac.tar.gz"

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