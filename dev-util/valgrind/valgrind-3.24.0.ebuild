# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools flag-o-matic toolchain-funcs pax-utils

DESCRIPTION="An open-source memory debugger for GNU/Linux"
HOMEPAGE="https://www.valgrind.org"
LICENSE="GPL-2"
SLOT="0"
IUSE="mpi"

SRC_URI="https://sourceware.org/pub/valgrind/valgrind-3.24.0.tar.bz2 -> valgrind-3.24.0.tar.bz2"
KEYWORDS="*"

DEPEND="mpi? ( virtual/mpi )"
RDEPEND="${DEPEND}"

src_prepare() {
	# Correct hard coded doc location
	sed -i -e "s:doc/valgrind:doc/${PF}:" docs/Makefile.am || die

	# Don't force multiarch stuff on OSX, bug #306467
	sed -i -e 's:-arch \(i386\|x86_64\)::g' Makefile.all.am || die

	# Respect CFLAGS, LDFLAGS
	eapply "${FILESDIR}"/${PN}-3.7.0-respect-flags.patch

	eapply "${FILESDIR}"/${PN}-3.15.0-Build-ldst_multiple-test-with-fno-pie.patch

	# Allow users to test their own patches
	eapply_user

	# Regenerate autotools files
	eautoreconf
}

src_configure() {
	local myconf=()

	# Respect ar, bug #468114
	tc-export AR

	# -fomit-frame-pointer	"Assembler messages: Error: junk `8' after expression"
	#                       while compiling insn_sse.c in none/tests/x86
	# -fstack-protector     more undefined references to __guard and __stack_smash_handler
	#                       because valgrind doesn't link to glibc (bug #114347)
	# -fstack-protector-all    Fails same way as -fstack-protector/-fstack-protector-strong.
	#                          Note: -fstack-protector-explicit is a no-op for Valgrind, no need to strip it
	# -fstack-protector-strong See -fstack-protector (bug #620402)
	# -m64 -mx32			for multilib-portage, bug #398825
	# -ggdb3                segmentation fault on startup
	filter-flags -fomit-frame-pointer
	filter-flags -fstack-protector
	filter-flags -fstack-protector-all
	filter-flags -fstack-protector-strong
	filter-flags -m64 -mx32
	replace-flags -ggdb3 -ggdb2

	# Don't use mpicc unless the user asked for it (bug #258832)
	if ! use mpi; then
		myconf+=("--without-mpicc")
	fi

	econf "${myconf[@]}"
}

src_install() {
	default
	dodoc FAQ.txt
	pax-mark m "${ED}"/usr/$(get_libdir)/valgrind/*-*-linux
}

pkg_postinst() {
	elog "Valgrind will not work if glibc does not have debug symbols."
	elog "To fix this you can add splitdebug to FEATURES in make.conf"
	elog "and remerge glibc.  See:"
	elog "https://bugs.gentoo.org/show_bug.cgi?id=214065"
	elog "https://bugs.gentoo.org/show_bug.cgi?id=274771"
	elog "https://bugs.gentoo.org/show_bug.cgi?id=388703"
}