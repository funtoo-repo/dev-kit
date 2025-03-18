# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/3f/cb/b4/3fcbb4a8d0d0fa933536efa06f332bf0fa8d349fcfd16f16c794de33d9bf3a371ec4fbf79e4adaf6d7f7c1f22601b7ed57464c18a04c727209f775201da3a852 -> cargo-c-0.10.11-funtoo-crates-bundle-ec225344e8d2fe8316df7942a11f52be0b033953d17aa331ff9934c98f61c366e186931725d4a03b573d2105a3016fe12188f7a944b30a9b62a8f0d1f570fb54.tar.gz"

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