# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/07d900b8fa1097806b8adb6391b0d3e0ac2fdea7 -> typos-1.39.0-07d900b.tar.gz
https://direct-github.funmore.org/5f/24/99/5f249990adfc9895f6e49de6056468172be8b22c2b6eef97c7787fe069511f0d867d5ae50c4888c16625953428ce974303f82a38c1a73a2bca1b7a2dbe5e0724 -> typos-1.39.0-funtoo-crates-bundle-4d9f339a14a56700ef1801e741816853c8992f3b4120740954af1438e676c75cbb5f8a19f6535c694985fd893166d5a892f08002d6bd75dd0d4e38eb9b5394f3.tar.gz"

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