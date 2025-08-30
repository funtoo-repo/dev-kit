# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A simple, fast and user-friendly alternative to 'find'"
HOMEPAGE="https://github.com/sharkdp/fd"
SRC_URI="https://github.com/sharkdp/fd/tarball/d38148f0aabdd073b4080cde770f679f3197b920 -> fd-10.3.0-d38148f.tar.gz
https://direct-github.funmore.org/81/bd/c0/81bdc0aeaff46fbbf8216556fbff453337e60dcfb5d7e7eb6c7a168f9d2ae848270bfd39e7b8c76d8421619a7c20e26193755fb504421691cb802eaadd9c29fd -> fd-10.3.0-funtoo-crates-bundle-2b9a3451c397570ca3ed78c1882c407e7f7a78e71f54cb1713bf96a061dfbcec591803cd0d9fc161a8aa0de2c647fbe9872474955168fb715a00b2fc21001342.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/fd"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/sharkdp-fd-* ${S} || die
}

src_compile() {
	# https://bugs.funtoo.org/browse/FL-10663
	# If we want bash and fish shell completions we have to
	# reverse engineer components of this Makefile from upstream
	# into this ebuild: https://github.com/sharkdp/fd/blob/master/Makefile
	#
	# After fd v8.5.0, bash and fish shell completion is being handled directly
	# by the fd Rust binary itself, specifically the clap_complete feature of the clap Crate
	#
	# These shell completion files can now be dynamically generated  with:
	# fd --gen-completions bash
	# fd --gen-completions fish
	#
	# The problem is the absolute pathing to the fd binary in those auto-generated
	# completion files needs to be correct relative to the Funtoo install in this ebuild
	cargo_src_compile
}

src_install() {
	cargo_src_install

	insinto /usr/share/zsh/site-functions
	doins contrib/completion/_fd
	dodoc README.md
	doman doc/fd.1
}