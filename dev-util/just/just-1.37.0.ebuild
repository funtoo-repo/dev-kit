# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Just a command runner"
HOMEPAGE="https://github.com/casey/just"
SRC_URI="https://github.com/casey/just/tarball/8a9b75ef45d851075d024b9390509563bdf46c8a -> just-1.37.0-8a9b75e.tar.gz
https://direct-github.funmore.org/52/89/78/52897806888b8c91e83fea4dff4420c53050851a21a35b975b96413f1aa718ecab82b93816f41b0a1650a45f4db6083039693044fcb02a2d3365bea96e8d6eba -> just-1.37.0-funtoo-crates-bundle-dafc0acda31dd04832695c86508f77f4eea836590421d5e4f84d67ef47b76a8ac0c9d41599a46ece19f073ea93665486ce1743229450f6a636dac5138c6cc091.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/just"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/casey-just-* ${S} || die
}

src_install() {
	cargo_src_install

	mkdir ${S}/man
	${S}/target/release/just --man > ${S}/man/just.1
	doman man/just.1

	dodoc README.md
	einstalldocs
}