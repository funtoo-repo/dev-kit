# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/7c/64/e7/7c64e7688d48db435cfd68b79fe2f33b0d10b1cb2ed3779a6d8edc6adcb70e5fb8d7dd686de5ea0fa265f4c5a9b089033f7ebb7b804d0ea050e0add3bc785b51 -> cargo-c-0.10.11-funtoo-crates-bundle-55e2fa9ce8cfc61dc77d44db5281e56bb6b92806a2fb1f454a220abc1cd69db32fda722facc06b838c5494588ca9b7bb9023695e3c18553a0e830cc0dd4663ca.tar.gz"

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