# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 go-module

go-module_set_globals

SRC_URI="https://github.com/kubernetes-sigs/cri-tools/tarball/ca0237b9fec5b675b0bb7bc96b7496e6d54f5ccb -> cri-tools-1.34.0-ca0237b.tar.gz
https://direct-github.funmore.org/22/3b/1e/223b1ec9449dc2575e7fa0650a6b80f4c9a138c65a3e43a4c237361b27ce8e5897fbfad1af64283c4a2e8635058f8eba7e262b6a479ae1d77321d02a569ffe5b -> cri-tools-1.34.0-funtoo-go-bundle-d4be9ba96481c41cf6690099bff08150f1f00aeeb2a745db635814d38c56d7fe05553a328579cd4906e9c15e318e75daf98f2c2dace1e6c4f372a27877af7ab6.tar.gz"

DESCRIPTION="CLI and validation tools for Kubelet Container Runtime (CRI)"
HOMEPAGE="https://github.com/kubernetes-sigs/cri-tools"

LICENSE="Apache-2.0 BSD BSD-2 CC-BY-SA-4.0 ISC MIT MPL-2.0"
SLOT="0"
KEYWORDS="*"

DEPEND="dev-lang/go"

RESTRICT+=" test"

src_unpack() {
	go-module_src_unpack
	if [ ! -d "${S}" ]; then
		mv kubernetes-sigs-cri-tools* "${S}" || die
	fi
}

src_compile() {
	emake VERSION="${PV}"
	./build/bin/linux/amd64/crictl completion bash > "${PN}.bash" || die
	./build/bin/linux/amd64/crictl completion zsh > "${PN}.zsh" || die
}

src_install() {
	dobin ./build/bin/linux/amd64/crictl

	newbashcomp ${PN}.bash ${PN}
	insinto /usr/share/zsh/site-functions
	newins ${PN}.zsh _${PN}

	dodoc -r docs {README,RELEASE,CHANGELOG,CONTRIBUTING}.md
}