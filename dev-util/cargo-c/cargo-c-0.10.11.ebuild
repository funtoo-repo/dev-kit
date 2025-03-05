# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/3d/1b/c8/3d1bc8ce7b89e194d1a906ed183117b2905a3f4e01fda3623f097a80ffdecc9ad1caf1a5c3a334251f5e1dbda335db057e5fed07daa8b871dda7b2039b5ef398 -> cargo-c-0.10.11-funtoo-crates-bundle-12ca839db8b38aac6778fb0a09fcd8ee4029ef6bd1a2985802e2bbce314b8039bd0fac36238586f2e7e95dfd72b8a81a213a64ee8d6e43b3f3071647c6ff6f6f.tar.gz"

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