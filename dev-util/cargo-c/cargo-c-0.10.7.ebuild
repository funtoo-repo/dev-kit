# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/f8/b5/af/f8b5af550c534901b3e31b8226d9544e207d1e520399f03bf9b05f3282a664b90423adb6364b43cb13b87a5ec565839cab4c20985f129b3d98f9220f942e897c -> cargo-c-0.10.7-funtoo-crates-bundle-2cb312fe45778c38b2658b20229fb975c0e3914008e06acfd6f984f5cce9206cac6faac52c0664d8a8aebae5bd923c7bd1a7c4953dbd8fa9dffb82320fbc4a0d.tar.gz"

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