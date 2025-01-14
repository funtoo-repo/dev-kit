# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/92/44/d4/9244d4f1de079bac530b3db6c251fdfd65a2e75f3c79decf1a71a0d75af9e081ae05a02bb921d0cafab7c678af065cde40e8a5bc9704a401c124de5ffe77470a -> cargo-c-0.10.8-funtoo-crates-bundle-4fca7799e8a0c7812ac8dfb9ed1b30193eda6b5476fd053188f10e8c61d8295c5610ba49de4ea882d6b73eaef2b874e9a2e9d9107382b7fea50ccd8c71880aaf.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND="sys-libs/zlib
	dev-libs/openssl:0=
	dev-vcs/git
	net-misc/curl[ssl]
"
BDEPEND="virtual/rust"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/lu-zero-cargo-c-* ${S} || die
}