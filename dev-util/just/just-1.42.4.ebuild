# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Just a command runner"
HOMEPAGE="https://github.com/casey/just"
SRC_URI="https://github.com/casey/just/tarball/dcb53f8777dbd3d9305f5ea35aaae6ddb86dcf20 -> just-1.42.4-dcb53f8.tar.gz
https://direct-github.funmore.org/55/a0/f1/55a0f144550ab4d953a0c6bb3c60f278c0db8246af61829f0f5700c30715acdd423f248b9468b2f04a6773fbc5f63789762d4485cffe9ca95075ddd2ed22c082 -> just-1.42.4-funtoo-crates-bundle-22d9c6ca044fcebba2271b966cdf3e591c0416f89cdfbe07cdecf172b267d64740b02557571e2019391f5fc9abbbf3a54cc5d644f9e23339283980a16da64885.tar.gz"

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