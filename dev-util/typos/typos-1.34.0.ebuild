# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/392b78fe18a52790c53f42456e46124f77346842 -> typos-1.34.0-392b78f.tar.gz
https://direct-github.funmore.org/3c/bd/6b/3cbd6b399bd6772e7126dbdc79aaf7fe283cf202260b2c2f996a7c70005e90b07914eb027f7c9f93a6c1f47ab918a8f14a90605acea9dc79f0e424aeb9ef8b7d -> typos-1.34.0-funtoo-crates-bundle-278e2aa36a61857038666330e19249525300d52a5c114da6ad4a1cf78325c97b55ca146a2a76d031beaa024a00c05efb519cf493509534ea31340ea782864ffd.tar.gz"

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