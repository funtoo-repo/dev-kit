# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Yet another cross-platform graphical process/system monitor."
HOMEPAGE="https://github.com/ClementTsang/bottom"
SRC_URI="https://github.com/ClementTsang/bottom/tarball/0e98e0239205f641df29d5fe0b1f439e9bd9c66c -> bottom-0.11.4-0e98e02.tar.gz
https://direct-github.funmore.org/c4/8f/7d/c48f7db1df8c96b4e984bd1917e478985db9826fa7e88864e65c3b266ed14c040b0d1d053d92154fb47c579f44c87442f66ae11a3b671a842d165a8da9e672f5 -> bottom-0.11.4-funtoo-crates-bundle-e3aa40c4b3a42360cc97aa1af4d869b9b8a8c3297ede7c484540fc1d5998176709df991b6178c3f78bd5cce41145c4ce24b137875997719f226fec9cf3a625c8.tar.gz"

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