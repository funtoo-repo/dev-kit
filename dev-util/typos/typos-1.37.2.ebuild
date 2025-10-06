# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/7436548694def3314aacd93ed06c721b1f91ea04 -> typos-1.37.2-7436548.tar.gz
https://direct-github.funmore.org/d2/42/e7/d242e77a498933e30bd33d9fe8e837d77fd0c5d5b583dcceb6b63f5b6537c9d4972ef492e918e6108a32f9a617579e4997121332296d7d0a69ca926d38255a98 -> typos-1.37.2-funtoo-crates-bundle-4d9f339a14a56700ef1801e741816853c8992f3b4120740954af1438e676c75cbb5f8a19f6535c694985fd893166d5a892f08002d6bd75dd0d4e38eb9b5394f3.tar.gz"

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