# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A cat(1) clone with wings."
HOMEPAGE="https://github.com/sharkdp/bat"
SRC_URI="https://github.com/sharkdp/bat/tarball/dab96bf0bcff07104db976325997bd2479e0c13a -> bat-0.25.0-dab96bf.tar.gz
https://direct-github.funmore.org/77/b4/ac/77b4ac3c2d17fd063e1641660d90506e9acf7a9ec04e1f579f09c0a19a6d0ec451c0e4f3731c4d0b0a26692569f932cfcd2ba44e4c514cab6fa4b8b332e826a8 -> bat-0.25.0-funtoo-crates-bundle-442ab221d9d24e34a58defe8ef6bfd58eb268d1088173f04506198319b1f0e7b5046f9c5a7deaf7d9aa644d9e7f48718e1b3ff4db72eee92bca1cd541fa74111.tar.gz"

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