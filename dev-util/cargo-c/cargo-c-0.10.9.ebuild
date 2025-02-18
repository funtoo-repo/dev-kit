# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/06/8c/ff/068cff65ae5fbcb43845a4bf9327732f1540f4d593e89b1d052ce5e38d9737a61fcd69996562ed16ae9b361f131af5298209b93a2174033bdf2c3dda07b3a07d -> cargo-c-0.10.9-funtoo-crates-bundle-fa74b83923adf16488297f0b06c64e0bd7acd3dca401a0d6778c3276284430c4601ff25753b1b9a08b2834a46fe5e2d052e4f8d7ade6f8becc10db91cca423a0.tar.gz"

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