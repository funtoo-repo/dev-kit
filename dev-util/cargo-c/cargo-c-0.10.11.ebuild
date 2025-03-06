# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/e5/d4/66/e5d466bd08118134aa9884c2c753f232e846da06a13737092e0afc67afb1c3c69db4c8b5b925f72aab1636972d58e0d5fd2a41ec7a59d6dd0d5bb6e5d7da1dc7 -> cargo-c-0.10.11-funtoo-crates-bundle-9432c287e43aa610dea49eabf036a742683346551922d1f9e052d191d798f8ac5312be9812082979a9c7a4f65e140bc151406c039b9e5616b25a347a03a38810.tar.gz"

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