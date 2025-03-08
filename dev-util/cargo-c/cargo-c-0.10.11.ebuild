# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/1a/03/20/1a032092b4c6d297aef6cd33678a0817135fbb8a0e304734b84577b29d7cf3683e2e250489d3e119187d6e89804b111527eee39ab05ed06167b63cb702f6abec -> cargo-c-0.10.11-funtoo-crates-bundle-d6f3614aed9a31b5340831adb5df4468fa85289be864429ab5ffae0ab406615d59ae9a48697b69507a21aadd845862b0b100c0f940894752aaacb43817770afe.tar.gz"

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