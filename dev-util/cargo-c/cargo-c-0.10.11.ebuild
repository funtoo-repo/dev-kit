# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/3f/58/33/3f5833d59cb21e53396a25265ba75d174935a478a5bd2527022176553217b7cdf4852cd2cbda2fb38bf3ff35acb0dec818255f79cdc69ae8b643042444db099e -> cargo-c-0.10.11-funtoo-crates-bundle-e115c565e563ab34a3e805b03b05245c4b7a702f36ae8885f40f0daad623649c5289222b5d0a9036d9d458996c498b2a2acce528f11cb0853ffde694cca7d8a4.tar.gz"

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