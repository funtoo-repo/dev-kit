# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/cc/7d/0d/cc7d0d5bfbf28855bb5d573907063932d3f5394db9caddf3896506bccfd437b62193a2f6467ca9cb43357ab7adf9b033d4348554f8f6926b7801dce7bfda200f -> cargo-c-0.10.12-funtoo-crates-bundle-f95ce512bf5838760a767ee7bf8fd34562c6f0306008048edd889536f89ef000606687cb5e9ac74c1f60a9fbfc7e0566e8397e0ae1401986fa32ff2098fe719c.tar.gz"

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