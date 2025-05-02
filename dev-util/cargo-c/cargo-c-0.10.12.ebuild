# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/63/22/9f/63229f0254ffab854b4b02c646c76b00d7c89a1dcb5abd270879a2f41466d327b6b3e61fa5ee956dc5099bad1fd8b69740d7b71895a46e3fa0c54784130ce8d8 -> cargo-c-0.10.12-funtoo-crates-bundle-a0bacc39a098f65f67d6cba4b01f273679b77002323eb77256794b2a740ba981925e8506b79df4a1a846c114207a4d2716beece4fe4d59e37f67c848d5c95a14.tar.gz"

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