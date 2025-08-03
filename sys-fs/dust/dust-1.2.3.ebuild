# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A more intuitive version of du in rust"
HOMEPAGE="https://github.com/bootandy/dust"
SRC_URI="https://github.com/bootandy/dust/tarball/4e83421da6afe074e82e948ec5baad7a92e98566 -> dust-1.2.3-4e83421.tar.gz
https://direct-github.funmore.org/c5/2f/98/c52f98fd227c57cd26ddbcec44b19e2740584d498467d956aee99cc18f48f307f60b5ec73c05280e2f131c1dd39c6ba817713969200ac01d745fae6348a6d70a -> dust-1.2.3-funtoo-crates-bundle-9f65744c7426722ce2beaf15f881a84c97c8bb5c888c5ef52017038817838906fcb181c4c84674727d8946d7c56677a13a6a3f07006203625dd9dbefcd581b81.tar.gz"

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