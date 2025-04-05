# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8c5b7af3d6edb6d99f7bffcc94adf550cfee65b3 -> cargo-c-0.10.12-8c5b7af.tar.gz
https://direct-github.funmore.org/38/ef/b9/38efb9837ab76ec717c1905d36330027d77df60691e9eaf28678a43a8a28f6539ed0881b4d6591e0be70418b9a4ca318f49c60c1d5c8258000030113286a0a34 -> cargo-c-0.10.12-funtoo-crates-bundle-5bda0f5fd2b71249cca84b10389e2a45cffefe2f10a46abf7efb63e0e49257061c406534c0f5582a6665db8de87ce72ec0ea91371ce1e85f8475bbd2537a85db.tar.gz"

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