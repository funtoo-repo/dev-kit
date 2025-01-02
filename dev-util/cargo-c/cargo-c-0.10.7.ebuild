# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/36/74/16/36741667123572f961c67c83d202c25b9b4e1de9834c896941374c430e992875677305c859c963f9392b87e1f4f3977dbe5cf282f10b7f9991606f5de494c1d6 -> cargo-c-0.10.7-funtoo-crates-bundle-ffe90974a9bc421baafb8cdb34193b56e93ba45e5052b95f309cd7e7e87717367a1c141f34cbe18dc9c89b8bfa25097bda2e1d0727e84a4d913c1b4f8aa82972.tar.gz"

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