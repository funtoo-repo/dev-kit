# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://direct-github.funmore.org/ee/2e/b2/ee2eb236e92632f5307670458dd4e49ad2ab6a9731f6381950cf20a10970522e396eb40076b66e48f127811ec85100f5164e6ec1a93304b2976b90fbe1c71b73 -> cargo-c-0.10.7-funtoo-crates-bundle-e9269aedf9589225b8d019fecb269cee1ecc6276eace40537c8f69b05110c9be02e8a7804b040fcaeb7df77bc5b49d34cab77886723269506c7df2d12b6b806c.tar.gz"

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