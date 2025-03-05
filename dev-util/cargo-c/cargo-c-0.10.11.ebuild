# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/9b/04/e1/9b04e16b96f93edde7071db7799501361a60c2be4d7753acd5cbc7463be7f08ec9944fc3df565de18eb8baef7ff99e5a4cc0d3b449f9de8fff20eb37cde3ebdc -> cargo-c-0.10.11-funtoo-crates-bundle-1ba07734e30044102ac7fe54305052a0109914d812add0fe531b72521464cd1ad703069ee8ab4588993f06cdf73414506be933806db3cf8e6d08041830f46a69.tar.gz"

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