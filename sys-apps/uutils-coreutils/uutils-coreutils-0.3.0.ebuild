# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Cross-platform Rust rewrite of the GNU coreutils"
HOMEPAGE="https://github.com/uutils/coreutils https://uutils.github.io/coreutils/docs/"
SRC_URI="https://github.com/uutils/coreutils/tarball/0a569a5d2bdb2b8166b9a2f2db608bd9e55ba208 -> coreutils-0.3.0-0a569a5.tar.gz
https://direct-github.funmore.org/d1/30/a9/d130a9e63a4f0ac2cb3469b53291866b77e26ef08f122152d29f918fe6a67d52ca16ee972e441e9c36a57b403872489dee1e639244cc7f3bd8f9acd6b0eb1809 -> uutils-coreutils-0.3.0-funtoo-crates-bundle-57f0fe7dc13bc8e02c2554c54e6664884565b553626ae29cdfeb779b4ce70876275ae417e7cb82a5507e208322aac87b98460d7c778285ca918b8592372c0eea.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

DOCS=( README.md )

QA_FLAGS_IGNORED="/usr/bin/coreutils"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/uutils-coreutils-* ${S} || die
}

src_configure() {
	cargo_src_configure --features unix
}

src_install() {
	cargo_src_install
	einstalldocs
}