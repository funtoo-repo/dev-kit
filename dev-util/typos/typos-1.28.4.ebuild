# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/9d890159570d5018df91fedfa40b4730cd4a81b1 -> typos-1.28.4-9d89015.tar.gz
https://direct-github.funmore.org/bb/2d/47/bb2d47796d92dfa6985a4e6583501ff8c62ee87adec5e13402d689887c50901256d8cd8443d3436acb2591a3c90aed46d0fb0a52ffc7ae6fd2331bb632585545 -> typos-1.28.4-funtoo-crates-bundle-ed02958a5d9ca88550fcd3e7279463b6d3883486a059525fcd1e8850ee24ed2a3ae2b6eab03a50423b73abe05fdf0866dc36b2236d200a44fadd09d01723beb3.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/typos"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/crate-ci-typos-* ${S} || die
}

src_install() {
	exeinto /usr/bin
	doexe target/release/typos

	local DOCS=(
	docs/design.md
	docs/reference.md
	CHANGELOG.md README.md
	)
	einstalldocs
}