# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/e2/4f/ba/e24fba42aa3217601bdf40c29036822d3ecb18eccf8c3f689e01660b54285d12b001875c0ce1936839a870c681c200e477b0b7e624f1a929f8ad8ead4c337d41 -> cargo-c-0.10.7-funtoo-crates-bundle-1901a9e9f65bb767652fb5d0bfb08080159c99b2b3f65a9bbe73149714eb348bb231f9be357fba08bc92752950adb1c15661d9f9f3e7dfc48da3f1901aa8a22b.tar.gz"

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