# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/d1da3c27a0defdceba12c2b2762094cdde6c0337 -> cargo-c-0.10.14-d1da3c2.tar.gz
https://direct-github.funmore.org/53/ef/df/53efdf9028fd96038e148574d94c0388eaba01cdf98f78c62ad1627a3791c54977f78d7cd1da19c789b1d20019815ab84bac98f96c6c4a035e6d4d4507e0407d -> cargo-c-0.10.14-funtoo-crates-bundle-1915196b5eff846460ef454dd33e914a80f65cfce1f5458db864ebde458c33ed4a4ad5a0e3ed2d35e8313f115a82b5acde5f88fc9e055eb8a427ed7a5510f208.tar.gz"

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