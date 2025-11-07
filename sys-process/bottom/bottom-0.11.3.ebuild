# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Yet another cross-platform graphical process/system monitor."
HOMEPAGE="https://github.com/ClementTsang/bottom"
SRC_URI="https://github.com/ClementTsang/bottom/tarball/e2e2bc5e22acfe2762f9db3fea60a73318d027cf -> bottom-0.11.3-e2e2bc5.tar.gz
https://direct-github.funmore.org/ef/6e/73/ef6e73fc5821a28a87fdec08b3f204302170dd5291c78144decc2a7312f42e34491f301c0659a2c09dacfab9f2cb2cc6faff22e3f147333fc4e626fc8f886d62 -> bottom-0.11.3-funtoo-crates-bundle-5ce352af8cb94d57b0262d6ab9b41b8bc02d109d8ebe4539cd09195f08ef99ed0428e75bede80de905c0890a8df3bd6dfad7fb30194ce6c267bf7835c8974b17.tar.gz"

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