# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/ad/3c/f1/ad3cf1d5ea216087436869763f2984443297bfd8194df971aacfb4c1fa6a789069ee7d078bfe6c5fd4fd43b00c7b615e03b71c1c704c91aaf37f7e826018122c -> cargo-c-0.10.11-funtoo-crates-bundle-558e316a4354757d50279845ed277c7455ba603bc4ce81d32663371e083b1a3119005e9781f82914492804cc71bda2fc6eb8db226fcd05262ea7ad8799b9db01.tar.gz"

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