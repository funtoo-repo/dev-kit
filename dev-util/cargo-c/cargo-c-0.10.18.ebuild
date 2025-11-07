# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/78a62e7acbe4994040f9c44694b798ac57fd470a -> cargo-c-0.10.18-78a62e7.tar.gz
https://direct-github.funmore.org/4b/6c/ce/4b6cce4fa2b8db93c82a576e800ef8138f26ca57ee65b757800f1d7a9ace0f3914232012b5ae0f035ffd3e472cca8a51f6feb3acb324843169147b33befe70c7 -> cargo-c-0.10.18-funtoo-crates-bundle-a50c3420ed67964d30154cee07285ea54f8817e3d92c26130a036b541173740f77948e2a1515528f6b9ed06a6b5067a7f25849ae51a9d257d58890c982cd0b93.tar.gz"

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