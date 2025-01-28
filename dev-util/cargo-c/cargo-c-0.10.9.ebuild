# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/1a/cd/c5/1acdc590de8dd5b2aa2facc83e3ec56d42e9b60fc958fc13bda56f06b4482e0c8d27cc2b461122f93d5d692bc7a7b8a8d3b3c1db5a33547937bd4ecc28f7b47a -> cargo-c-0.10.9-funtoo-crates-bundle-cc3c30946f95b52156b5bd7d4202961e08d214e58c9259cf9ab7e8be69c69259c0193afd79e8abaeb6f8894b8ad1abf616835f27383640eaaf982d4528ba516c.tar.gz"

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