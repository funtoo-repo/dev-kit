# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A modern alternative to ls"
HOMEPAGE="https://eza.rocks https://github.com/eza-community/eza"
SRC_URI="https://github.com/eza-community/eza/tarball/465d6abbf9b541e1703a6fa55c11fad134f01527 -> eza-0.21.3-465d6ab.tar.gz
https://direct-github.funmore.org/87/74/87/8774870554994d04ecb2fab6295f8265586bfecffb76a7c760525595d0b00b1dc6d70e1db0f6e9ae4dcb86ffb202c9a173b0dcd912429dd088423cbd8fdbf481 -> eza-0.21.3-funtoo-crates-bundle-ab35648a45e332dd40e0739b95e9c5a3b4d74d8f39aa137dce27d33d49a17c0bfd32b7a225457860fe4fd1ce2b11fa389db9b866d0f7e084c73b4ced3e524833.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"
IUSE="+git"

DEPEND="
	git? (
		dev-libs/libgit2:=
	)
"
RDEPEND="${DEPEND}"
BDEPEND="
	|| ( app-text/pandoc-bin app-text/pandoc )
	virtual/rust
"

DOCS=( README.md CHANGELOG.md )

QA_FLAGS_IGNORED="/usr/bin/eza"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/eza-community-eza-* ${S} || die
}

src_configure() {
	local myfeatures=(
		$(usev git)
	)
	# https://bugs.funtoo.org/browse/FL-11956
	# Enabling vendoring of libgit2 as eza requires version >= 1.7.2
	# Once Funtoo has a new version this can be changed back to 1 for
	# linking against the Funtoo system libgit2
	export LIBGIT2_NO_VENDOR=0
	export PKG_CONFIG_ALLOW_CROSS=1
	cargo_src_configure --no-default-features

	find ${S}/man -iname "*.md" -type f -exec sh -c 'pandoc --standalone -f markdown -t man "${0}" -o "${0%.md} "' {} \; || die
	rm -f ${S}/man/*.md || die
	mv ${S}/man ${S}/man.tmp || die

}

src_install() {
	cargo_src_install
	einstalldocs

	newbashcomp completions/bash/eza eza

	insinto /usr/share/zsh/site-functions
	doins completions/fish/eza.fish

	insinto /usr/share/fish/vendor_completions.d
	doins completions/zsh/_eza

	doman man.tmp/*
}