# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/c2/d1/50/c2d150dafd3374cf4a8422b3c611047f270ecea0eff5a802d6c548e40159cc9f6ca432dbb5a755f9db4c0d7c98fc6201a78f58b69f90144dc8968d30f049ad78 -> cargo-c-0.10.7-funtoo-crates-bundle-3db277975511658079816e3c8cbaeb13677d704fdce2f313127f750094e5d031b3e5af5ba54252f432fd8280e0d60255999001982cff4099fa74618257eafab7.tar.gz"

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