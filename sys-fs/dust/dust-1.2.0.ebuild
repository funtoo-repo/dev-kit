# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A more intuitive version of du in rust"
HOMEPAGE="https://github.com/bootandy/dust"
SRC_URI="https://github.com/bootandy/dust/tarball/646cdd976ded146779f4fc57c34c56fa850d728f -> dust-1.2.0-646cdd9.tar.gz
https://direct-github.funmore.org/fb/b1/19/fbb11986bd804c9cdbafa0bba069f7f77a8a1b96f01817aa30e988540b2c2a4e72f92033cdc141264550e1cf1dd7e195a35629777f87f8ded9f2067eac3842e0 -> dust-1.2.0-funtoo-crates-bundle-c5e647ca140bbf7d319b0cd0636ea8f0a10a34e9c048bbf62c0a1d2b2da11372868246779b20cb2e3c0744caa635313017dea839e3e37df111c99ffd7a727cd9.tar.gz"

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