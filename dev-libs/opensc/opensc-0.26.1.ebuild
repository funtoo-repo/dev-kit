# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools bash-completion-r1

DESCRIPTION="Libraries and applications to access smartcards"
HOMEPAGE="https://github.com/OpenSC/OpenSC/wiki"
KEYWORDS="*"

SRC_URI="https://github.com/OpenSC/OpenSC/releases/download/0.26.1/opensc-0.26.1.tar.gz -> opensc-0.26.1.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/11"
IUSE="ctapi doc openct notify pace +pcsc-lite readline secure-messaging ssl zlib"

RDEPEND="zlib? ( sys-libs/zlib )
	readline? ( sys-libs/readline:0= )
	ssl? ( dev-libs/openssl:0= )
	openct? ( >=dev-libs/openct-0.5.0 )
	pace? ( dev-libs/openpace:= )
	pcsc-lite? ( >=sys-apps/pcsc-lite-1.3.0 )
	notify? ( dev-libs/glib:2 )"
DEPEND="${RDEPEND}
	app-text/docbook-xsl-stylesheets
	dev-libs/libxslt"
BDEPEND="virtual/pkgconfig"

REQUIRED_USE="
	pcsc-lite? ( !openct !ctapi )
	openct? ( !pcsc-lite !ctapi )
	ctapi? ( !pcsc-lite !openct )
	|| ( pcsc-lite openct ctapi )"

src_configure() {
	export ac_cv_path_CLANGTIDY=""

	econf \
		--with-completiondir="$(get_bashcompdir)" \
		--disable-strict \
		--enable-man \
		$(use_enable ctapi) \
		$(use_enable doc) \
		$(use_enable notify) \
		$(use_enable openct) \
		$(use_enable pace openpace) \
		$(use_enable pcsc-lite pcsc) \
		$(use_enable readline) \
		$(use_enable secure-messaging sm) \
		$(use_enable ssl openssl) \
		$(use_enable zlib)
}

src_install() {
	default

	insinto /etc/pkcs11/modules/
	doins "${FILESDIR}"/opensc.module

	find "${ED}" -name '*.la' -delete || die
}
