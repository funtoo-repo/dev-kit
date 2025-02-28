# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Deploy a complex environment to an LXD Cluster or LXD standalone installation"
HOMEPAGE="https://github.com/MottainaiCI/lxd-compose https://mottainaici.github.io/lxd-compose-docs"
SRC_URI="https://github.com/MottainaiCI/lxd-compose/tarball/50873abfbcf9d2249319e4403665f947f68d4762 -> lxd-compose-0.35.2-50873ab.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"

DEPEND="dev-lang/go"

post_src_unpack() {
	mv MottainaiCI-lxd-compose-* ${S}
}

src_compile() {
	lxdcompose_ldflags=(
		"-X \"github.com/MottainaiCI/lxd-compose/cmd.BuildTime=$(date -u '+%Y-%m-%d %I:%M:%S %Z')\""
		"-X github.com/MottainaiCI/lxd-compose/cmd.BuildCommit=50873abfbcf9d2249319e4403665f947f68d4762"
		"-X github.com/MottainaiCI/lxd-compose/cmd.BuildGoVersion=$(go env GOVERSION)"
	)

	CGO_ENABLED=0 go build \
		-ldflags "${anise_ldflags[*]}" \
		-o ${PN} -v -x -mod=vendor . || die
}

src_install() {
	dobin "${PN}"
	dodoc README.md
}

# vim: filetype=ebuild