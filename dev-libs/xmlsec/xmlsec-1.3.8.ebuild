# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Command line tool for signing, verifying, encrypting and decrypting XML"
HOMEPAGE="https://www.aleksey.com/xmlsec/download.html https://github.com/lsh123/xmlsec"
SRC_URI="https://github.com/lsh123/xmlsec/tarball/c8be9998ef9f7a074374e1df389bf3c1d4c05f55 -> xmlsec-1.3.8-c8be999.tar.gz"
LICENSE="MIT"

SLOT="0"
KEYWORDS="amd64 ~arm arm64 ppc ~ppc64 ~sparc x86"
IUSE="doc gcrypt gnutls libressl nss +openssl static-libs test"
REQUIRED_USE="|| ( gcrypt gnutls nss openssl )
	gnutls? ( gcrypt )"

RDEPEND=">=dev-libs/libxml2-2.7.4:=
	>=dev-libs/libxslt-1.0.20:=
	gcrypt? ( >=dev-libs/libgcrypt-1.4.0:0= )
	gnutls? ( >=net-libs/gnutls-2.8.0:= )
	nss? (
		>=dev-libs/nspr-4.4.1:=
		>=dev-libs/nss-3.9:=
	)
	openssl? (
		!libressl? ( dev-libs/openssl:0= )
		libressl? ( dev-libs/libressl:0= )
	)"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig
	test? (
		nss? (
			>=dev-libs/nss-3.9[utils]
		)
	)"

S="${WORKDIR}/lsh123-xmlsec-c8be999"

src_prepare() {
    default
	./autogen.sh || die
}

src_configure() {
	econf \
		$(use_enable doc docs) \
		$(use_enable static-libs static) \
		$(use_with gcrypt) \
		$(use_with gnutls) \
		$(use_with nss nspr) \
		$(use_with nss) \
		$(use_with openssl) \
		--enable-mans \
		--enable-pkgconfig
}

src_test() {
	emake TMPFOLDER="${T}" check
}

src_install() {
	default
	find "${D}" -name '*.la' -delete || die
}