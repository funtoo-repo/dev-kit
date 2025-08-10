# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/52bd719c2c91f9d676e2aa359fc8e0db8925e6d8 -> typos-1.35.3-52bd719.tar.gz
https://direct-github.funmore.org/f6/58/8a/f6588a744eef1bd1b66ccd470033d8eefbede5347249e3c90ee8217ca7f60a3697ea5db4fe0db0009bf4b555ef638527c453c7f7a30b21e5c3779e17e3102bf7 -> typos-1.35.3-funtoo-crates-bundle-7525eca87bf0e1e937c167d327d1e804527192ad5288baa671265ac6dafdf1baabd95ca8e9d74015572f6f53dd7536cce38e11eb76bd81130226d8e60905e12b.tar.gz"

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