# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo bash-completion-r1

DESCRIPTION="A very fast implementation of tldr in Rust."
HOMEPAGE="https://github.com/dbrgn/tealdeer https://dbrgn.github.io/tealdeer/"
SRC_URI="https://github.com/dbrgn/tealdeer/tarball/bbd2a8d703c1074c3671578b5dfd5795dbd57279 -> tealdeer-1.8.0-bbd2a8d.tar.gz
https://direct-github.funmore.org/e9/8b/6d/e98b6d9ed1a8b255bb48dd989f1f4d7ad4cad2553a4d9622fe818ea62d43e3af506c9668db7d5cb0b01f6f1f882e90e3368470260b389ca64634f03ee7a10e39 -> tealdeer-1.8.0-funtoo-crates-bundle-71872869dbfe7ab828057cccca4f1f23ff30ee4eaaeb1a6643f0e883f162f9421280b9f558b1eaa51d38b1c32cfebf2400845b531cb0650196e3d8def98112f9.tar.gz"

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