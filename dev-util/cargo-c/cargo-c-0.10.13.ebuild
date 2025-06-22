# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/0f/33/76/0f3376efb672df5f496fdd19c084eda6cf385b8e3152684cdcce1f9bc7f89bd1d3cf89fbe45db9397d9e8a8c6e8b8b262a499653d66a6600a58ac87b7fc11851 -> cargo-c-0.10.13-funtoo-crates-bundle-a86d3dd24f19006e3849d85c45b18732799d7ddec2756d94c3e639e320887b4f30d547c8a7380df2e1c9ef8de62c9f632efe13fd773e8e6a4dab4333b9b0afef.tar.gz"

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