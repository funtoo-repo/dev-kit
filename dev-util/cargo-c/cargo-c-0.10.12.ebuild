# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/a3/08/a0/a308a0a1c7dc6d9d5307000cc9cb824652185d665909dfdd28b374c612258c65b8e6e87dbfc32b193e1beca6eb042bdaef129334b29988c99fe2abc522d6a22a -> cargo-c-0.10.12-funtoo-crates-bundle-5711d25d3631d8425794c9ba2036c286d2a44823568a21c128cc58a5702ff35c181cb004dc577849832fcd5e86c655133c477746f2292893c8a8bbc6caa3b2a9.tar.gz"

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