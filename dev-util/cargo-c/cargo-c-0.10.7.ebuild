# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/a8/9a/39/a89a3973dd23401d508ae401e0db94bd871ab2e275a7b0d1cea4a4707a975a55f0036f105647afa9450b0a0a325b194dba5e3d0fd024c2a6aa54b7ee71b4fb0e -> cargo-c-0.10.7-funtoo-crates-bundle-cf0708d9b99f6813bfcd8b4983eb8fef4d2ea18065b1076b4c9d198b4c9d401467c910929fedc3dd7d00fae0e54220071fea834e3cd65fb6fabe0c4f3bb6586f.tar.gz"

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