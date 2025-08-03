# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/d1da3c27a0defdceba12c2b2762094cdde6c0337 -> cargo-c-0.10.14-d1da3c2.tar.gz
https://direct-github.funmore.org/64/17/56/641756e8d28d08cbf5eb2837673d9885ea45c683cc8a9fe8c7a92994ee722349c0b10d6d9c624cb35094340ef26b494d346ffb9208d7a19faf47835e869fdb21 -> cargo-c-0.10.14-funtoo-crates-bundle-3af84d8ae8135488f4d4f3f3c1d95adb1833d0ebf8c8b58c59019330a1f148806323f39dab73291fd5147e3a1bed568d8fe0510c5e3d290b0c01da27d7487718.tar.gz"

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