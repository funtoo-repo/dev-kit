# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/0e/4e/a5/0e4ea5d620f67b923b3e7b75814c824f6da8fbc0b3718d9fc423a59379bb5e41d648e93613ed090e96a5a9f8b410e9aef1cf7a620c93d95347266bf00ab3188a -> cargo-c-0.10.7-funtoo-crates-bundle-51667558e3e356ed335edf8a0783c73ee12011392a4e7443892d05edc39c7c9a23347a65adfac6351b38c5d48c4b330b1e1a6b9088a754d40749a65366f29ca6.tar.gz"

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