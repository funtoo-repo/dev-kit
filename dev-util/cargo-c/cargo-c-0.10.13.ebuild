# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/13cdea00f92fbd69ebf6f342aac5622700c9e691 -> cargo-c-0.10.13-13cdea0.tar.gz
https://direct-github.funmore.org/ad/6b/fe/ad6bfe5f30e2216e86671e2d29766cd3cccdabd1f4645dc129c7a969b39f67099366e14a1ddc8100e5d278d398bda3106bde15ef7e9fe0fe49efb5213fe1ede2 -> cargo-c-0.10.13-funtoo-crates-bundle-fa67bbf308d7041bb6640f568d567231155675ebce50f73053d432ef6aa652904489d9c8840292aec308ede11d0175235641d4c23c5251cd380ec6d3a5408f7f.tar.gz"

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