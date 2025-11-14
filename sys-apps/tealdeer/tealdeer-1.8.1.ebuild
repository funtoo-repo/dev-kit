# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo bash-completion-r1

DESCRIPTION="A very fast implementation of tldr in Rust."
HOMEPAGE="https://github.com/dbrgn/tealdeer https://dbrgn.github.io/tealdeer/"
SRC_URI="https://github.com/dbrgn/tealdeer/tarball/a11a91d45875742d39a81d7efcc36512cfee28ba -> tealdeer-1.8.1-a11a91d.tar.gz
https://direct-github.funmore.org/e1/07/17/e107173a39b0fcb6e04dfd653dd11eff8c4599e5fe2562a0fb5cadf9c650ae60f3d014026349c45efa9aa56e45c5a48205bdc0e2d662570dc5f66eca8a000c5c -> tealdeer-1.8.1-funtoo-crates-bundle-6832a59a8e8e2df9c94a922541b0d5037df2d53246e36a2accf797f74feeb9014e56a3c158ee58ddac6f3f4636dc10e4128a70b19ea6b0aab9ab6c802da64f33.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="+bash-completion zsh-completion fish-completion"

DOCS=( README.md CHANGELOG.md )

QA_FLAGS_IGNORED="usr/bin/tldr"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/dbrgn-tealdeer-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs

	use bash-completion && newbashcomp completion/bash_tealdeer tldr

	use zsh-completion && {
		insinto /usr/share/zsh/site-functions
		newins completion/zsh_tealdeer _tldr
	}

	use fish-completion && {
		insinto /usr/share/fish/vendor_completions.d
		newins completion/fish_tealdeer tldr.fish
	}
}