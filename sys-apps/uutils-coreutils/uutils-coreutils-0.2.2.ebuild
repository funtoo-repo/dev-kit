# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Cross-platform Rust rewrite of the GNU coreutils"
HOMEPAGE="https://github.com/uutils/coreutils https://uutils.github.io/coreutils/docs/"
SRC_URI="https://github.com/uutils/coreutils/tarball/8aee0703524eb8c48fde916ed0126f8d8d7462ce -> coreutils-0.2.2-8aee070.tar.gz
https://direct-github.funmore.org/d0/3a/1e/d03a1e2c556e1ac9015c91ddf0dcecdbd2a1d832701bbd7ef8107c636d24484adae50302b276117d43d15d29eac2f5fa4b59abb5fa7e54aae75ceb1d23885b3b -> uutils-coreutils-0.2.2-funtoo-crates-bundle-024ef1f8f2c68701b158de38950fa9af7f2b3a41a5ba01cc23b32e25574e69cbe8f020c791fc27d8da423fe058d26df01043b7a8b2c7ab33aa080a183d781c3e.tar.gz"

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