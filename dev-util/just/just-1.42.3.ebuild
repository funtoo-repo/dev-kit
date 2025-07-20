# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Just a command runner"
HOMEPAGE="https://github.com/casey/just"
SRC_URI="https://github.com/casey/just/tarball/07bab1dbbe4c4c352a62419f2042c82d6867c13b -> just-1.42.3-07bab1d.tar.gz
https://direct-github.funmore.org/6c/fc/99/6cfc99f2af3a2f9ef3fafcbaeea764d03f01f8cf40247bc76c03936cb5e5497c1b0549a26b5ca837e7cf34e6fd5596daa8811de187e1201ca775daf847031b62 -> just-1.42.3-funtoo-crates-bundle-207feb656eed76656339694375b5a47177eac5c7a5568264207f59f890cc2375b5f16a818b1387670357367e23caab08fbbe079b4eee4774aabb726031c9c762.tar.gz"

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