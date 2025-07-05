# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Just a command runner"
HOMEPAGE="https://github.com/casey/just"
SRC_URI="https://github.com/casey/just/tarball/1029ae4a114043f01bd1ce9c90bdc42611fe771c -> just-1.41.0-1029ae4.tar.gz
https://direct-github.funmore.org/ff/98/9f/ff989fd38b83e2f7fd9d997597501c2e51bb4ad976b83e1bf1cdda31350bf5603121f5fd77590afc199e80cc83d5e77b30e3f720f58d4f4525db81c098167019 -> just-1.41.0-funtoo-crates-bundle-1aefe03bb10beeb10667dc6fdad6676c2f964b3a6873e5173a38cf1c26e2c907fa3ac665dc78100e2e943fdc183fdcaedc91c708893a30a59fb83f885ef4e8f2.tar.gz"

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