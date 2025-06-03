# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/b1ae8d918b6e85bd611117d3d9a3be4f903ee5e4 -> typos-1.33.1-b1ae8d9.tar.gz
https://direct-github.funmore.org/7b/9c/8d/7b9c8da810b7997137274456393bb62ab6d671c520bc35f39c3f60129516dba9bd7e7023a05c8e0a6fc0fb237d956b9f3dfa6f1c3bba9b1a75184f5013e69be2 -> typos-1.33.1-funtoo-crates-bundle-4cfe2937d97fcfa2ea94ce98a30ff5ed63cda911c672f5b582365a6dbb5255e06b711da67876f0d1353ed9b47d2de6aeba65c0cfba05217c6c1b4626ee85817c.tar.gz"

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