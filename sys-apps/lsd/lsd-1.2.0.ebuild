# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A modern ls with a lot of pretty colors and awesome icons"
HOMEPAGE="https://github.com/lsd-rs/lsd"
SRC_URI="https://github.com/lsd-rs/lsd/tarball/d5a4e1cb80626d5ec94b237f6b77f7280d0f2fc9 -> lsd-1.2.0-d5a4e1c.tar.gz
https://direct-github.funmore.org/2a/97/97/2a9797bb6682b8cbdbd08f3fae4eb66d80905239165f680f9d492ff4722c033613361df05f2a7bdd13a549b49a3741b5aeaa1701821778dc5f7dd0cf8fe0b7fd -> lsd-1.2.0-funtoo-crates-bundle-eed8b213b472c8fc718c258d51d15f85b13a2e19801a30954f35797409099ff24df8beb116314ba92ed973d22e2a21c071bd317c30217d2625b148aaa77df57a.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"
IUSE="+git"

DEPEND=""
RDEPEND=""
BDEPEND=">=virtual/rust-1.31.0"

QA_FLAGS_IGNORED="/usr/bin/lsd"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/lsd-rs-lsd-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs
}