# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo bash-completion-r1

DESCRIPTION="A very fast implementation of tldr in Rust."
HOMEPAGE="https://github.com/dbrgn/tealdeer https://dbrgn.github.io/tealdeer/"
SRC_URI="https://github.com/dbrgn/tealdeer/tarball/9b2122ed28d220593e510c362c10102d6bcf5722 -> tealdeer-1.7.1-9b2122e.tar.gz
https://direct-github.funmore.org/22/cd/b4/22cdb4859ef7bf0cdb7b41cd9cf832d75cb458d098c2099cd823f792bc014a8d6d83d536aa213db20a5512817e50f2fac6de6df4a7d3f5e89f747055892c884f -> tealdeer-1.7.1-funtoo-crates-bundle-43da2286fdbec9cb8cf32eb44e0eeedc464654c63f4abcb17df466afa311bda447ff2cc1805347988b150bc8460c16a86f4cc6f603d9d10dcadd4bdb0f3ed128.tar.gz"

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