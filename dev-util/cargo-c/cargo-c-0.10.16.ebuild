# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/5091d9613fc6536f2beb0e7e037597fe0e0146bf -> cargo-c-0.10.16-5091d96.tar.gz
https://direct-github.funmore.org/bb/a9/e3/bba9e324dcbed77b25c3105cffb7bb976dda601d5786586434ee074bbac76ac7119cdde7e7b45e280078f69e83c2968ecc0cc05e2b89d24bfad43c3e81be8641 -> cargo-c-0.10.16-funtoo-crates-bundle-0cff13fb7ae3e12bf898b8c330b78d59f9f071c4d5e0dfb857f3de67bf3ea5a9f214492e8e164186efb61d28d7c58d46a687b5bc2b27db2b81f5fb19fb88e032.tar.gz"

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