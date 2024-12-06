# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/47/ed/7a/47ed7acd06e72312b70b8ddfb91942fe8d4cc697eb869ac17a233a50f606bb7916f4daaa34e5399eb1b7bcc68ff72a4442a30f806ee71debaf3be2bbf6e74576 -> cargo-c-0.10.7-funtoo-crates-bundle-d9e3e5025c780f78d6c22a70ab93f132797f578af52f05321eae381b7f194a2038c631857cb6a72f0d1d71cfed50532d02e61fcfa30df220c06650d6561b4c94.tar.gz"

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