# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/49/51/9b/49519bbf3ff903f6f8a8e83b0daff7c5dba0b8b9892b9fcf32681b8089ec98a93befee6b3f848dfb035163d8ba3ab0fbc2b178bf2cb19cc2e99c9cb732eabf90 -> cargo-c-0.10.8-funtoo-crates-bundle-486af4b5dd9bfd319580759e52ce75da06567a2a943cf6c98515817d8b634924a2df8451cb9abe2a99289b0223656b0d0e1725a86029341c62c1e1ae199a79a0.tar.gz"

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