# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Command-line Git information tool"
HOMEPAGE="https://github.com/o2sh/onefetch"
SRC_URI="https://github.com/o2sh/onefetch/tarball/6f01038519ad5166131e50eff3d67238f393b0ee -> onefetch-2.23.0-6f01038.tar.gz
https://direct-github.funmore.org/dd/0b/64/dd0b64142dd9e28f03513bcd0cafca8c7410eef5b04b7ff6fca8c29baba10f0c7cf12a838c386983bc39985d5fbeb1d5d41925ba6c112123f0f16645844143e8 -> onefetch-2.23.0-funtoo-crates-bundle-f859acdcd1e966ec5f83303f70818d499c8ce68073e3b10efc5b893569dd4f92896152788947afc3e6ae7467e23d1c81015353112119588cf69f3ada80d9e0ce.tar.gz"

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