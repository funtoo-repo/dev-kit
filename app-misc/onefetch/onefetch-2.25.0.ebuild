# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Command-line Git information tool"
HOMEPAGE="https://github.com/o2sh/onefetch"
SRC_URI="https://github.com/o2sh/onefetch/tarball/57768208149c640144020a7d5108fc32b272934a -> onefetch-2.25.0-5776820.tar.gz
https://direct-github.funmore.org/f7/c1/ff/f7c1ff12042393ab7047d0ea3dbb8118bae16a7c22388f82206547680e7ecb4c5eee326a25b7e089817ee1676989eac3c4c1cd0d4a46c7ea0e9ad1aa409cd9b4 -> onefetch-2.25.0-funtoo-crates-bundle-cc95cff763bfc26bdb160fb0cab23d40a0670d55f81b1d73aa5070d238989f032a958be61fe695d3946a623235c7ad0b3d00a1c1d2f510739b145bbd4b2138d9.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/onefetch"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/o2sh-onefetch-* ${S} || die
}