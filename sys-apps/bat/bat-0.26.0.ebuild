# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A cat(1) clone with wings."
HOMEPAGE="https://github.com/sharkdp/bat"
SRC_URI="https://github.com/sharkdp/bat/tarball/c734087e1d15fb730d7653389c841fd9e3016556 -> bat-0.26.0-c734087.tar.gz
https://direct-github.funmore.org/ac/cf/8e/accf8e9674db898dfd6a4e7b9b72a72f57871972dcc1888169eb5e216c5a4eb21118b177b5d53ed9d3610546a3b4cb9e6d0eeea0fb562ae1c957545156bf526e -> bat-0.26.0-funtoo-crates-bundle-142f715fe3699de9e3bdf8f83384b2d7d6ed1e5283b96fb2dc32384f8fc3ad19a18ef70dfc3efcaacf9536d118edf5de61053b079edb1010b040a70d56a12bf6.tar.gz"

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