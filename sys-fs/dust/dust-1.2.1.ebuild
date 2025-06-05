# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A more intuitive version of du in rust"
HOMEPAGE="https://github.com/bootandy/dust"
SRC_URI="https://github.com/bootandy/dust/tarball/29441eda19518fd1c697c8d3166da40949e2ba42 -> dust-1.2.1-29441ed.tar.gz
https://direct-github.funmore.org/3a/95/0b/3a950bb478bceedf7383766fcca5976ceef25b391f700999a09ed5bff1c88c9ae6ecedd64159b55038673e36e2f6efb4443ffae4d115e8d675dcbdaae0b8bb94 -> dust-1.2.1-funtoo-crates-bundle-dcc3f16ac3ec10193dea4758c3d3d1ee5d8c0361e1fc1508aefafffd947ec0c6ed7ea23ec86e263cbad94ffe982a7205a06b6ca6bec192ce2a80167b24108992.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

DOCS=( README.md )

QA_FLAGS_IGNORED="/usr/bin/dust"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/bootandy-dust-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs

	doman man-page/dust.1

	newbashcomp completions/dust.bash dust

	insinto /usr/share/fish/vendor_completions.d/
	doins completions/dust.fish
}