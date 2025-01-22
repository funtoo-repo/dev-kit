# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/578b4ed8a8baa9faa42a072ca40b7267b125fc15 -> cargo-c-0.10.9-578b4ed.tar.gz
https://direct-github.funmore.org/b7/0a/7b/b70a7bbf357fae9590f6c87d2792ba3cb52f4d36e8cf9c21760a6a6b3ed334072d69bd7e4ea833fb8c1cfd81129514e43fd5c27252512e674f752a88ad17198b -> cargo-c-0.10.9-funtoo-crates-bundle-cca1f973baceeb0b732f8ac10195fc9ded2ad6def612d215ef2b87607ea484b98cb4e701554587e404a7e3fccde9f870988b6d8d4852625334c7b0b0fb41648f.tar.gz"

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