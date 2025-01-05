# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/dc/57/55/dc5755ec9907bfa82a67c64bfc44a231c1fe83aa358aa7101864841be177b3db26ea6cfbfce9f3093c4f344f5abc6063be79df07e0e3c9a057643194c43cd1ff -> cargo-c-0.10.7-funtoo-crates-bundle-8054c62e53bd5a35ac871f6dda7dada35dcbe9468f66cdcbbc5eda192e612ff0dd081a51ef6a626c92eacd80e52e1e404fea416e3e5ea32254458b056b86e0e1.tar.gz"

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