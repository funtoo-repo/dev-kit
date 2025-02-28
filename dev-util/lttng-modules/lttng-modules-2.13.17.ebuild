# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit linux-mod

MY_P="${P/_rc/-rc}"
MY_SLOT="$(ver_cut 1-2)"

DESCRIPTION="LTTng Kernel Tracer Modules"
HOMEPAGE="https://lttng.org"
SRC_URI="https://lttng.org/files/lttng-modules/lttng-modules-2.13.17.tar.bz2 -> lttng-modules-2.13.17.tar.bz2"

LICENSE="GPL-2"
SLOT="0/${MY_SLOT}"
KEYWORDS="*"
IUSE=""

BUILD_TARGETS="default"

CONFIG_CHECK="MODULES KALLSYMS HIGH_RES_TIMERS TRACEPOINTS
	~HAVE_SYSCALL_TRACEPOINTS ~PERF_EVENTS ~EVENT_TRACING ~KPROBES KRETPROBES"

MODULE_NAMES="true"

S="${WORKDIR}/${MY_P}"

pkg_pretend() {
	if kernel_is lt 3 0; then
		eerror "${PN} require Linux kernel >= 3.0"
		die "Please update your kernel!"
	fi
}

src_compile() {
	BUILD_FIXES="KERNELDIR=$KERNEL_DIR" linux-mod_src_compile
}

src_install() {
	for i in $(find "${S}" -name "*.ko" -print); do
		local val=${i##${S}/}
		local modules+="${val%%.ko}(misc:) "
	done
	MODULE_NAMES=${modules}

	linux-mod_src_install
	dodoc ChangeLog README.md
}