# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/3c/f4/ec/3cf4ec915a347ef225a99e45bfd8df4e30627cdab094a2b984785b65a0dbd44eb34b111a7824d1dc58b9f8b1ad38d67d59fd1adad3ef366938bc5caf9917e135 -> cargo-c-0.10.12-funtoo-crates-bundle-044d543d7fa88426e4abef57f75bac32355714b99a4dd616377997235366e2cec8d7de4a17341d868b2679646afe17ff217655bb175e34731e052673decb679f.tar.gz"

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