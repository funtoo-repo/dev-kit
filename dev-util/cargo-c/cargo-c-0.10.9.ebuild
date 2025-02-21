# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/86/3a/2c/863a2c2223511a8acd3cfafe4914da271d35caddd160bb60548ddc4e83b687290e4b31f48a34ae9b5b070b73acf82e32f1cf1918838235ce6db7fa8d1245afc0 -> cargo-c-0.10.9-funtoo-crates-bundle-27dc19ef28f84e3228fab39fe8a553d00f55b12037ac098c8a90b02c421106d398203c3fe68639f5b6452be1bb7e5676e83aa20b3a635f63961a0ac7a0447384.tar.gz"

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