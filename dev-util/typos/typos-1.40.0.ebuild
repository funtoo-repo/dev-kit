# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/2d0ce569feab1f8752f1dde43cc2f2aa53236e06 -> typos-1.40.0-2d0ce56.tar.gz
https://direct-github.funmore.org/ae/ea/03/aeea03911e5e2b40e8f773765be32d11986c11aeeb9c54b2657c6add720c4e422836808b3a4185fef7667d5b256ef65fbfdf476039ab146b875b052675c0f862 -> typos-1.40.0-funtoo-crates-bundle-1bcaf64f1a2806e84e96556707993224686a11c8eb0f44e43cb6c7ae22f9a301b2550963051e319b6eb1338b4fcbaa131833f1a77bb5e56878f88ddf36fc9b7d.tar.gz"

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