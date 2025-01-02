# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/0c/75/70/0c7570ca2757a3d5b40fe6f863cea045d55af7043938923122703f9de1f322affb63a45af41784f772ab9db400a7e84abb69b7deee9415b89e0ab63de84ef889 -> cargo-c-0.10.7-funtoo-crates-bundle-34617edddfacabcc37758cb2d6a5c3f288a0079a57429cd7ef4ae69015f7cd1729c0e1d316673871c3d483e03aacc470eff294bf5038176ea10c4308113ce2e4.tar.gz"

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