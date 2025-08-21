# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Yet another cross-platform graphical process/system monitor."
HOMEPAGE="https://github.com/ClementTsang/bottom"
SRC_URI="https://github.com/ClementTsang/bottom/tarball/2578f20ce542047e3906ef87334ce15fbb53c15a -> bottom-0.11.1-2578f20.tar.gz
https://direct-github.funmore.org/49/f3/08/49f308f86fc51d511b04004c3daded09a2315156a1bccf64b1038f0a578d55d45427f9761aafacee9e819c7bbd0079a229dbbb4d8c6ffaef3d37bcf37d58f0e0 -> bottom-0.11.1-funtoo-crates-bundle-9b4b341a94707eef9c160af84167478b6d374e36e19580c1fd2b67986ed680ace9d6619f32f60e9d4c3dcd9f98fedd0533e3836def93a0e6be710cd1368db7f3.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

DOCS=( README.md CHANGELOG.md )

QA_FLAGS_IGNORED="/usr/bin/btm"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/ClementTsang-bottom-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs
}