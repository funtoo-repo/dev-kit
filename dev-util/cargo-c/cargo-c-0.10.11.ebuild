# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://direct-github.funmore.org/d0/ee/b9/d0eeb963bf64b44fd86784883f1b5879edee85ce0e8d8c8ae491e656c4b8048f0bdb2bb806de15901134163c54b92840ad78068f6ecea5ffda831863e719381b -> cargo-c-0.10.11-funtoo-crates-bundle-585250da58999486df2a700fd3cb41ff57fda4e28026a0402637887f58b22d801c546ad501baedbb60714a7a50dbc9e0626d88fa19cf271effd5c265a04e54cc.tar.gz"

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