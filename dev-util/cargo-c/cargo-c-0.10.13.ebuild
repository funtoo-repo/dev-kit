# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/48/2f/08/482f08bf4a05ec273238e88245f38ad3cce3238b926ce527c8ca925cd70177278f6eb1a235df482db698b0944e2d7150e82757388e59d93a6d7f328dba3dc5f4 -> cargo-c-0.10.13-funtoo-crates-bundle-494841600a33af3c8ce5acb9e5930e53fcaaba45d0363e194f4dfd136d6a5d263dfdc5a9f623552c65f2aba72dba6aabeb9dcfe63cada0653c62da9abd812f2c.tar.gz"

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