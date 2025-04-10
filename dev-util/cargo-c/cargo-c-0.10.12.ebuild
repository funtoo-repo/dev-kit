# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/4f/53/63/4f5363b65ac1776b629e3283688f86deb4e670c0ba62090adde7fb20e6b5c3bb138705992ce66967271eea1e39f3099d929ded9319793f31a9f1cdb8c8a4db5f -> cargo-c-0.10.12-funtoo-crates-bundle-4b965c224d2ac84be1d76710a7bba7b295dd7ae8558f10446573259ff1a530a6a4847347bc5c4063da6e88fec209af29a359a82dca2a5c4cf5222c6b0cfd8f70.tar.gz"

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