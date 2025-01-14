# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="FastCGI Developer's Kit"
HOMEPAGE="http://www.fastcgi.com/"
SRC_URI="https://github.com/FastCGI-Archives/fcgi2/tarball/0079e56d8b6640c354457be42090617431f5c6bc -> fcgi2-2.4.4-0079e56.tar.gz"

LICENSE="FastCGI"
SLOT="0"
KEYWORDS="*"
IUSE="html"

DEPEND=""
RDEPEND=""

post_src_unpack() {
	if [ ! -d "${WORKDIR}/${S}" ]; then
		mv "${WORKDIR}"/* "${S}" || die
	fi
}

src_prepare() {
	default

	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install LIBRARY_PATH="${ED}/usr/$(get_libdir)"
	einstalldocs

	# install the manpages into the right place
	doman doc/*.[13]

	# Only install the html documentation if USE=html
	if use html ; then
		dohtml "${S}"/doc/*/*
		insinto /usr/share/doc/${PF}/html
		doins -r "${S}/images"
	fi

	# install examples in the right place
	insinto /usr/share/doc/${PF}/examples
	doins "${S}/examples/"*.c
}