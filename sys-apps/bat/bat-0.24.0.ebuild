# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A cat(1) clone with wings."
HOMEPAGE="https://github.com/sharkdp/bat"
SRC_URI="https://github.com/sharkdp/bat/tarball/fc9546854f5a7b38823f4990453c6cde386bfd3b -> bat-0.24.0-fc95468.tar.gz
https://direct-github.funmore.org/87/a1/ea/87a1ea3e10907190ac2e224ddffa1a57810d784ee22addc7164eb5242e2c10af9c6bd9c57b6a098ad3d100a0d769dc543d7c71dbe1bacfcabd54dc894350bf0c -> bat-0.24.0-funtoo-crates-bundle-b185fd188c488b36cf1f89328f61b9f604691e249fabb53f22f15bcece386a82fc9686a45c53f776f83fde6edfdd8e0318763ba93013200253305eb0a2f1a583.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND="
	>=dev-libs/libgit2-0.99:=
	dev-libs/oniguruma:=
	sys-libs/zlib:=
"

BDEPEND="
	virtual/pkgconfig
	virtual/rust
"

DOCS=( README.md doc/alternatives.md )

QA_FLAGS_IGNORED="/usr/bin/bat"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/sharkdp-bat-* ${S} || die
}

src_configure() {
	export RUSTONIG_SYSTEM_LIBONIG=1
	export LIBGIT2_SYS_USE_PKG_CONFIG=1
	export PKG_CONFIG_ALLOW_CROSS=1
}

src_install() {
	cargo_src_install
	einstalldocs

	# This derives the temporary build crate name where bat's
	# template generated bash completion file assets are located
	local crate_build_dir=$(find "${S}/target/release/build/" -name "bat-*" | head -1) || die
	local crate_build_dir_base=$(basename $crate_build_dir) || die

	doman "target/release/build/${crate_build_dir_base}/out/assets/manual/bat.1"

	newbashcomp "target/release/build/${crate_build_dir_base}/out/assets/completions/bat.bash" bat

	insinto /usr/share/fish/vendor_completions.d/
	doins "target/release/build/${crate_build_dir_base}/out/assets/completions/bat.fish"

	insinto /usr/share/zsh/site-functions/
	newins "target/release/build/${crate_build_dir_base}/out/assets/completions/bat.zsh" _bat

}