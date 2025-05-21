# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/e7/92/3c/e7923cc9ec98b705c0d959934d52a0aff1897b0b60dd290db01472e32ac1294c0fd88e1dd1254fc6c143a7f835d94e55513ac61adcfc033d9a317703d2943c73 -> cargo-c-0.10.13-funtoo-crates-bundle-1220d92ffa82d3ed6e40c1e59e9be206360ec9581fa2aa90bc2625cc17e8818953deba3e610ea53b98652532a3ead788b28f34461127a8fc675c149aa5812f98.tar.gz"

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