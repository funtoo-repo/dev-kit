# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Command-line Git information tool"
HOMEPAGE="https://github.com/o2sh/onefetch"
SRC_URI="https://github.com/o2sh/onefetch/tarball/5151b54289e6fc94b0a3f7d2ffca06949fc1a4d7 -> onefetch-2.22.0-5151b54.tar.gz
https://direct-github.funmore.org/3f/f8/bc/3ff8bc7fe9df9eb3684d8a84435933b0677992563e7fd274d03f8de5d4714b664fa09e6306006c4a9bc0554eda1cfc2a833d8e40ed9da0783ed905e09604960c -> onefetch-2.22.0-funtoo-crates-bundle-9baf236c46175749a81c2724e628ae4b9d6d9ab9663ce9419801d67f92f6b70c44c9b01b96e08a2a17877858ef06c902ebc4c8137a68ac598a3252f56a09c244.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/onefetch"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/o2sh-onefetch-* ${S} || die
}