# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A cat(1) clone with wings."
HOMEPAGE="https://github.com/sharkdp/bat"
SRC_URI="https://github.com/sharkdp/bat/tarball/979ba22628bc9d8171f2cffca2bd5c90c9fc0a9e -> bat-0.26.1-979ba22.tar.gz
https://direct-github.funmore.org/8a/2f/56/8a2f56984ca93fe1cb6118d6366e7ea8df90577a2970140b875cf3a4ba98aa0f7d78d617adc61307f782727862f979bc260cccd58f0f27b75b470eff9a11d23f -> bat-0.26.1-funtoo-crates-bundle-80f3f70d459ff95d2d9c61a9e4bb48c6f99e66a3a3f5758af900ae577a3847230a2b937ace33deb93025d7ffee6a1778f3155fe11032ee12afb4d9939fc5acc6.tar.gz"

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