# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/d1/e6/49/d1e649d15a68e395e1d5846dc7d0bfd230ee151bfbb1f8ef3a0deae8fd26bc6014cbc945f013e22818659df605be5171fa0e8fe54304f30bae02236a5bbbe074 -> cargo-c-0.10.12-funtoo-crates-bundle-54b7057745cf658e8fe95417b297d7e6a4c465351fcc96b37e26c727340b658636ac0d03e1a2caee376010273247e599f96d0995ffe51e16d8d6c67735c0086b.tar.gz"

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