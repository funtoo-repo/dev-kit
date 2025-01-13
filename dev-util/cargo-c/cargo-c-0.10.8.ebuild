# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/e6/7c/37/e67c373bccf901b40f7ccfa30a65147b8e22e26d1081431fc5cac9968db8ea8d209a058db9389bd5b45004a10a0c4b86951c91fdeb12e1ac44c89d09f709002b -> cargo-c-0.10.8-funtoo-crates-bundle-cad6cddc88bf47151376c06e19c8baecaa5204890a066dc30c428d5509613a742635548dce65c52ca33acc0aaed54334678b1a7a6b399711b5b9660855e90f14.tar.gz"

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