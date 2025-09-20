# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/3e178d5609e5dcc20de3cb0de1bf579329e43784 -> cargo-c-0.10.15-3e178d5.tar.gz
https://direct-github.funmore.org/3b/12/9c/3b129cb315489e2236f7e1764c844fd2dce3b05e8223cbcbdb7685dffae944b2ac0f56fe210388363eca4bbcf8ebec63c8535a77bc0966f69c0e519d5c5a13cf -> cargo-c-0.10.15-funtoo-crates-bundle-ef52b42821c0fd4ea6971ae92ffc04d53145db8e3e18d312169b305f7d27cea4531f283e50cdf7ce3c9d3740c823bcc2698203c203bf674b600d866e7e90474a.tar.gz"

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