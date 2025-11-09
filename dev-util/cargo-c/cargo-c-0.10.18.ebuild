# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/78a62e7acbe4994040f9c44694b798ac57fd470a -> cargo-c-0.10.18-78a62e7.tar.gz
https://direct-github.funmore.org/4a/9c/3c/4a9c3c350cd8f87395decae1562a6d5027e54534ead98097d1cd4073c123085244dd5ee16e1b9a072f6ae4861bf1647d651c2da46f3cede6e1c0a86aa152d31a -> cargo-c-0.10.18-funtoo-crates-bundle-36c00979ed5133963d7612bd0f195618944304302acd61c9dca52ec98b4b2250b9b173464f99939d6573665edc813fcbd709cfebf05a4e8b8a328280a1ab1b54.tar.gz"

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