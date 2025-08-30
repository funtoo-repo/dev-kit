# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/65f69f021b736bdbe548ce72200500752d42b40e -> typos-1.35.7-65f69f0.tar.gz
https://direct-github.funmore.org/f0/57/6b/f0576bb0c62aa0c8a32fdd77d1440b1ac0a83549b9d72e81c77a5331904b0a4200a7147109b21ade6520f38255d9a2d509596bbc24bd04c232434f611383332f -> typos-1.35.7-funtoo-crates-bundle-7525eca87bf0e1e937c167d327d1e804527192ad5288baa671265ac6dafdf1baabd95ca8e9d74015572f6f53dd7536cce38e11eb76bd81130226d8e60905e12b.tar.gz"

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