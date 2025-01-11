# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://direct-github.funmore.org/11/70/01/117001c6f7ca70b7a2065a203f35e8abcd25dd9cbc6f73096b56668a7b0c3842db19a557eab8c6e64fa34a725b2e7f566898361ebbaa01d9672b304febd7fac6 -> cargo-c-0.10.8-funtoo-crates-bundle-f58d349cb32c261a79597492ea12bc6bb518fc3f3bb1658d05dead99d44df482c2667688c17f98a9878810c336c70f65f1ce038e3b149d566892f5c6eab565e9.tar.gz"

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