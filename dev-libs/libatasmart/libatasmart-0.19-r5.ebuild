# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit eutils

DESCRIPTION="A small and lightweight parser library for ATA S.M.A.R.T. hard disks"
HOMEPAGE="https://salsa.debian.org/utopia-team/libatasmart"
SRC_URI="https://archive.debian.org/debian/pool/main/liba/libatasmart/libatasmart_0.19-5.debian.tar.xz -> libatasmart_0.19-5.debian.tar.xz
https://archive.debian.org/debian/pool/main/liba/libatasmart/libatasmart_0.19.orig.tar.xz -> libatasmart_0.19.orig.tar.xz"
LICENSE="LGPL-2.1"

SLOT="0/4"
KEYWORDS="*"
IUSE="static-libs"

RDEPEND="virtual/libudev:="
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	# https://bugs.gentoo.org/470874
	local d="${WORKDIR}"/debian/patches
	sed -i -e '/#/d' \
		-e "s|^|${d}/|" "${d}"/series || die
	eapply $(<"${d}"/series)
	eapply_user
}

src_configure() {
	econf \
		--docdir="${EPREFIX}"/usr/share/doc/${PF} \
		$(use_enable static-libs static)
}

src_install() {
	default
	prune_libtool_files --all
}