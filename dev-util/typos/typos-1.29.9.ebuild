# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/212923e4ff05b7fc2294a204405eec047b807138 -> typos-1.29.9-212923e.tar.gz
https://direct-github.funmore.org/92/42/a5/9242a5d00a03a8fd4cfbf8e9647912ba21c1815757a53040f51f176acf01341a2083a32c36970296f55dc77bd1cdc922d51be39e43c9e538a04e75456437695e -> typos-1.29.9-funtoo-crates-bundle-e88ff7b5d21442d552de79d655135b739859c092180539e2ffcafee2b3a9a20be5b1b0238b1c41dfe7de7d90214695fccb39274490290ecaabe6dd2f9b5b8b3b.tar.gz"

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