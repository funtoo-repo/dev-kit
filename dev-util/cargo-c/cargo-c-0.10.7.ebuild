# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/0f/a3/e3/0fa3e397e1bbd7f3838c3b90492844baac53784a2c7b3ad056b12d1b291740636fea8511e9b829a9797dbd2c5293c6aa2310b8200c6393d8095891ce14bd595c -> cargo-c-0.10.7-funtoo-crates-bundle-6fb516172e59e7097e8d844ec2553a9721c16592724ac0caacee22c9159d7f936fee6b75ccdd9468814de1ffa2ee3dc8bf246739f44f52746fed7f919e6b401f.tar.gz"

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