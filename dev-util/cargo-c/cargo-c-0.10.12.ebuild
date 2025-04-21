# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/da/c2/cb/dac2cb27f708073dea44b2f7621aecfa9544dddafec170d0e0b0aebd75ae1124b41e917577bb520a9b175249f58bdebe1903f433674351937d72e78979032a88 -> cargo-c-0.10.12-funtoo-crates-bundle-85e176a8ffad3dd78c666f8275e1c0829e628f189e35c65a1db101bf59b27e860796cde5f615259ef2c5565a630a704cac1c1ac78796efa3e3fc6fbe27865357.tar.gz"

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