# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Source code spell checker"
HOMEPAGE="https://github.com/crate-ci/typos"
SRC_URI="https://github.com/crate-ci/typos/tarball/685eb3d55be2f85191e8c84acb9f44d7756f84ab -> typos-1.29.4-685eb3d.tar.gz
https://direct-github.funmore.org/de/a5/9c/dea59cfd0f2501f8071be2e826e4cb5dc94f9273c3c8ded20023efbc9458cbb0f7d5f7e64d83a966776566e3d87e7271bf331355afdfef3485ad2b7011308c7c -> typos-1.29.4-funtoo-crates-bundle-98e29801364d5431187c28b4b05bc9cdd748eb39617b0a2ab433df61bc9b6a7e8b3b8709d7d5fc006855506514eea46ad20f4dc883600d34d6cae47428d2c00e.tar.gz"

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