# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Customize your git commit hashes!"
HOMEPAGE="https://github.com/not-an-aardvark/lucky-commit"
SRC_URI="https://github.com/not-an-aardvark/lucky-commit/tarball/0000000528d30e42901f5650a6597371380c815b -> lucky-commit-2.2.4-0000000.tar.gz
https://direct-github.funmore.org/5e/32/5e/5e325e4bf2e05440fbfbf26e2796b4075ebbfe1f084cfb9267b93428cd5034f26c353ec87e1ea64d68d17f4cd814f0f0cd997c32b476ed7bc2133bc37ced382f -> lucky-commit-2.2.4-funtoo-crates-bundle-bb0f63a6cb9b09dbfea55b0fbc0f1d6d8b9a48c0546e8fa9cb2e6a5226cfc320bb4d6770c96e6fcfb042d8a2cd16affe49edab61cc179beadee2c7d4084a78a8.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/lucky-commit"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/not-an-aardvark-lucky-commit-* ${S} || die
}

src_compile() {
	cargo_src_compile --no-default-features
}

src_install() {
	cargo_src_install --no-default-features
}