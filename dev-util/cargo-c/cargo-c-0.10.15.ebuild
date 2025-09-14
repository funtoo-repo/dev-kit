# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/3e178d5609e5dcc20de3cb0de1bf579329e43784 -> cargo-c-0.10.15-3e178d5.tar.gz
https://direct-github.funmore.org/5b/c1/5a/5bc15a7eef48ed568cd8bd1f1986b906eb192107208570412c9890fc761c2ce487008244524d6e8a5e32f2909849b529b5ae62646d055b42443abaa3ab3056a8 -> cargo-c-0.10.15-funtoo-crates-bundle-1d665711b247ac85dac89d03ab296fbf65551336317083edb6d91e91fb7f32bc7b9ca34c9ce286f30fb3c9a236cda88d38a1003ca3765286f05462adc029d174.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND="sys-libs/zlib
	dev-libs/openssl:0=
	dev-vcs/git
	net-misc/curl[ssl]
"
BDEPEND="virtual/rust"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/lu-zero-cargo-c-* ${S} || die
}