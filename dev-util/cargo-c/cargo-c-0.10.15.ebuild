# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/3e178d5609e5dcc20de3cb0de1bf579329e43784 -> cargo-c-0.10.15-3e178d5.tar.gz
https://direct-github.funmore.org/7b/fb/8f/7bfb8fa0b409460cbddf14931fda698533a098185f35abca0650f95026ffba2673d77b3269e8fcd5dfca7fc44c7a5851fc2f218a1dada88fb795c54309ecaf50 -> cargo-c-0.10.15-funtoo-crates-bundle-950d72b80075e84fcac09392e8a369569f36fb0e190333be023ea26a20fc53930e7882d3496c2565beab493b182c609330e8fd42a680514a494e004d46bec2e0.tar.gz"

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