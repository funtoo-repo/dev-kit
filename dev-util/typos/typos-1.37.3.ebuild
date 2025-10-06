# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/64e4db431eb262bb5c6baa19dce280d78532830c -> typos-1.37.3-64e4db4.tar.gz
https://direct-github.funmore.org/14/95/5e/14955ee6c4dd132e1c2ce1efe2a324e56b647ef81a50abb9e0d1fecf1d4cb1dc002cb19537dac298a623efbe9bb2d1a800ad1e8f43e8bc4bcf256e032ec7f64c -> typos-1.37.3-funtoo-crates-bundle-4d9f339a14a56700ef1801e741816853c8992f3b4120740954af1438e676c75cbb5f8a19f6535c694985fd893166d5a892f08002d6bd75dd0d4e38eb9b5394f3.tar.gz"

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