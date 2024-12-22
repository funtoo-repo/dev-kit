# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/74/51/6b/74516b59936bea393174090cbbaa8385939e5a744c9e5c08c8bc8f98635555f7661c35c829076654323fd36eda433466addb5d668aa9d912ab87b8ef2a40012f -> cargo-c-0.10.7-funtoo-crates-bundle-7bf3382177571b57b18a04cdfb5614348be0f8403b8eac534f5dbacbbb07be11ef31a9a79ca6209eaacf70757c7cc0b40fa95d4bf2dcc2ee7d2e8841326fe3a8.tar.gz"

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