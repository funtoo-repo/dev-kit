# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/0c17dabcee8b8f1957fa917d17393a23e02e1583 -> typos-1.36.3-0c17dab.tar.gz
https://direct-github.funmore.org/6f/be/dd/6fbedde365d6da89d283b520993e268c9b35b4d9cffbb772e8eba814eb974c191cb1d818fe92086ed65b3794ed2613facd35da6efde6b6528b8a2933e24afe08 -> typos-1.36.3-funtoo-crates-bundle-80cc8c58df4efdb888910585f492226cc6caf692d9d17d35f6a7b9dfd6c7b338a765d9f06391b97f0fc9796070104473942a4a5b77514907e55ce9fe412d86dd.tar.gz"

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