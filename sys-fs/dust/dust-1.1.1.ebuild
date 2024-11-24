# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A more intuitive version of du in rust"
HOMEPAGE="https://github.com/bootandy/dust"
SRC_URI="https://github.com/bootandy/dust/tarball/dbd18f90e7b184d12f14533e76e5915dbe4a2051 -> dust-1.1.1-dbd18f9.tar.gz
https://direct-github.funmore.org/c2/0a/c0/c20ac02b32493b043937b76f3c534451de632766568c286a4f706b9ef7ac34f96cd55398f8d12d77d05ab1c2eb3f3c903a159f1dca5325b34837e9e02b13a40b -> dust-1.1.1-funtoo-crates-bundle-54a0bcdf68182cc3a316b1a00a34e60ee908a97d2e8e011c3c8ab534c95dde4e9179807a2d572f084d251f54e13e31d56b441db8adc107d80e586e74a95f6636.tar.gz"

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