# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/c8fd3764afbf5eaf6e53d2e6571c835db2c8fa5f -> typos-1.29.0-c8fd376.tar.gz
https://direct-github.funmore.org/e0/39/6e/e0396ed02994ea845bd4318ecac193669a1de695c052b17b4b71f662bb33caa99fab01df9d9b98d94fe9502acaad20d379f3b085e11caeab550c6e77d68391bf -> typos-1.29.0-funtoo-crates-bundle-6dad1b05925cac5d60b39987f4e04f6a39177eecee1284426b6b829936e7def7c021a8cd1f9d0818373947ec4de31ea7dae4ea26e5d0cb6dcb4fcf30e2a7296c.tar.gz"

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