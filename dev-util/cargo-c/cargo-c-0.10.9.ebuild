# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/e6/cd/aa/e6cdaaa3d7549483cf4210f978a222de0f6ac5194fed80a5bbb34ae9ee651960d861f2c3103bb7a830df22eceaa186a5caf865458fa20522936bbb861f1fa99e -> cargo-c-0.10.9-funtoo-crates-bundle-a95893cd7753363b7435967e36f0f22ec63417411361c3f6dbafeb7db3516fd67c6ba46f99416e4dcbd008477c65cdf1d1eef9e3b3a43028fff87ecc0dc06d9d.tar.gz"

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