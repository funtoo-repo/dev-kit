# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1

DESCRIPTION="Confix: A Build Tool on Top of GNU Automake"
HOMEPAGE="http://confix.sourceforge.net"
SRC_URI="mirror://sourceforge/confix/Confix-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="2"
KEYWORDS="~amd64 ~x86 ~ppc-aix ~x64-cygwin ~amd64-linux ~x86-linux ~sparc-solaris ~x86-solaris"
IUSE=""

DEPEND=""
RDEPEND="dev-util/confix-wrapper
	sys-devel/autoconf-archive
	sys-devel/automake
	sys-devel/libtool"

S="${WORKDIR}/Confix-${PV}"

PATCHES=( # find jni-include dirs on hpux.
	"${FILESDIR}"/2.1.0/jni-hpux.patch
	# add .exe extension to TESTS
	"${FILESDIR}"/2.3.0/exeext.patch
	# use external autoconf archive
	"${FILESDIR}"/2.3.0/ext-ac-archive.patch
	# link local libraries first.
	"${FILESDIR}"/2.3.0/local-libs-first.patch
	# don't use automake 1.9, but any newer too...
	"${FILESDIR}"/2.3.0/new-automake.patch
	# support -no-undefined libtool flag
	"${FILESDIR}"/${P}-support-no_undefined.patch
	# drop deprecated 'dist-shar' automake flag
	"${FILESDIR}"/${P}-nodist-shar.patch
)

pkg_setup() {
	python-single-r1_pkg_setup
}

pkg_preinst() {
	local RV=2.3.0

	if has_version "<dev-util/confix-${RV}"; then
		einfo "After merging ${P} you might have to remerge all packages built"
		einfo "with <dev-util/confix-${RV} in your EPREFIX to get all the"
		einfo "repo files useable with current ${PN}".
		ewarn
		ewarn "Use this command (copy&paste) to identify packages built with confix"
		ewarn "needing a remerge in your particular instance of Gentoo Prefix:"
		ewarn
		# use 'echo' to get this command from here:
		ewarn "( cd \$(portageq envvar EPREFIX)/var/db/pkg || exit 1;" \
			  "pattern=\$(cd ../../.. && echo \$(ls -d" \
			  "usr/share/confix*/repo | grep -v confix-${RV}) |" \
			  "sed -e 's, ,|,g'); if [[ -z \${pattern} ]]; then echo" \
			  "'No more packages were built with broken Confix.'; exit 0;" \
			  "fi; emerge --ask --oneshot \$(grep -lE \"(\${pattern})\"" \
			  "*/*/CONTENTS | sed -e 's,^,>=,;s,/CONTENTS,,')" \
			  ")"
		ewarn
	fi
}
