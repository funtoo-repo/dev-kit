# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/5091d9613fc6536f2beb0e7e037597fe0e0146bf -> cargo-c-0.10.16-5091d96.tar.gz
https://direct-github.funmore.org/80/50/43/8050430cc56ed9affea7960e292c40f3c9865cbf7bdbb95428b9bc5c6a57f925f4dd2d2ee062c34df89e1b36cd606f055d379c729f220a231f99c05baee3c1d6 -> cargo-c-0.10.16-funtoo-crates-bundle-d576b2b0c870603ac8d05410e3f3924811d867d1a02e538eb0d8352c811bb1af8f23cdf1aa00a3e9e1dd7da3d73f29a274dc4527569d3eed2cf9bcc5027f612c.tar.gz"

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