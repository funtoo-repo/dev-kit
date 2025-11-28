# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit eutils gnome2-utils fdo-mime desktop

DESCRIPTION="AVR development board IDE and built-in libraries."
HOMEPAGE="https://github.com/arduino/arduino-ide"
SRC_URI="https://github.com/arduino/arduino-ide/tarball/5af55e3aa4f9f180c5582c5b060017132c228b71 -> arduino-ide-2.3.6-5af55e3.tar.gz"
LICENSE="GPL-2 LGPL-2.1"

KEYWORDS="-* ~<dyne.org.funtoo.metatools.pkgtools.ebuild.Artifact object at 0x7f3ab14cd3f0>"
SLOT="0"
IUSE=""

ARD_PN="${PN/-bin}"
ARD_P="${ARD_PN}-${PV}"
ARD_PF="${ARD_PN}-${PVR}"

RESTRICT="strip test"

QA_PREBUILT="opt/arduino/*"

DEPEND="app-arch/xz-utils"
RDEPEND="${DEPEND}
	sys-libs/ncurses[tinfo]
	virtual/libusb:0
	virtual/libusb:1
	virtual/udev
	media-video/ffmpeg
	dev-libs/glib"

S="${WORKDIR}/${ARD_P}"

src_compile() {
	# do nothing
	true
}

src_install() {
	declare ARDUINO_HOME=/opt/${ARD_PN}

	# install desktop file, manpage and icons
	domenu "${FILESDIR}"/${ARD_PN}.desktop
	doman  "${FILESDIR}"/${ARD_PN}.1

	cd "${S}"/lib/icons &>/dev/null || die
	for size in * ; do
        if [ -f "${size}/apps/${ARD_PN}.png" ] ; then
            insinto "/usr/share/icons/hicolor/${size}/apps"
            doins "${size}/apps/${ARD_PN}.png"
        fi
    done

	dodir /usr/share/pixmaps
	doicon "32x32/apps/${ARD_PN}.png" || die
	cd - &>/dev/null || die

	# copy directory to /opt
	dodir ${ARDUINO_HOME%/*}
	mv "${S}" "${D}"${ARDUINO_HOME} || die

	# make binary symlink
	dosym ${ARDUINO_HOME}/arduino /usr/bin/arduino

	# revdep-rebuild entry
	insinto /etc/revdep-rebuild
	doins ${FILESDIR}/10${PN} || die
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	# Update mimedb for the new .desktop file
	fdo-mime_desktop_database_update
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}