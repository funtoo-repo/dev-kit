# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/83/60/91/836091f8124f97e2bdeaa8dfed751b29ba6eb7932ed82e5d2145021cf9cf02e723d237d4a4f84e26cb80d39689f127ad95200ebc9d65ce589c1534d00071a688 -> cargo-c-0.10.9-funtoo-crates-bundle-0a50c0a3a9c9f41f0dc9c0b68a5c3cbbb2f2f459fa5ee6921d6796fb17ad028aff6402af994d84dcdebaae1228299cb67b377521eb621301c87741bbaeac1112.tar.gz"

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