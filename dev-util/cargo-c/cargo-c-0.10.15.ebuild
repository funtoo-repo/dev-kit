# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/3e178d5609e5dcc20de3cb0de1bf579329e43784 -> cargo-c-0.10.15-3e178d5.tar.gz
https://direct-github.funmore.org/82/3c/4f/823c4fad02cafc1609ff82ee2f3557048397365a63599e3db9c5ca0e1a521a9697353622e6109f06f9afd6dcaa238bd36893a33fabbfd11e2c2341ade1ea35e1 -> cargo-c-0.10.15-funtoo-crates-bundle-77868c2219bbc986309672b6132083b7c77b694eac728917a908c17ee1afb6ee0ad9864f97a031ca73a959cabfba484ec2367ba015b416f11ae2ee78a68232ab.tar.gz"

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